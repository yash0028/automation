package util;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.stream.Collectors;
import java.util.zip.ZipFile;

/**
 * Created by jwacker on 8/8/2018.
 */
public class FileHelper {

    private static final Logger logger = LoggerFactory.getLogger(FileHelper.class);
    private static FileHelper ourInstance = new FileHelper();
    private Properties properties = null;

    /*
    CONSTRUCTOR
     */

    private FileHelper() {
    }

    /*
    STATIC METHODS
     */

    public static FileHelper getInstance() {
        return ourInstance;
    }

    /*
    CLASS METHODS
     */

    public File writeByteArrayToFile(String fileName, byte[] content) throws IOException {
        //Create the file with the given filename
        File file = new File(fileName);
        BufferedOutputStream writer = new BufferedOutputStream(new FileOutputStream(file));

        //Write the byte[] to the file
        writer.write(content);
        writer.flush();
        writer.close();

        return file;
    }

    public boolean zipContainsFiles(File file) {
        ZipFile zipFile = null;
        int size = 0;

        try {
            //Create instance of ZipFile with the given file
            zipFile = new ZipFile(file);

            //Get the size of the zip file
            size = zipFile.size();
            zipFile.close();
        } catch (IOException e) {
            System.out.println("Error regarding zip file: " + e.getMessage());
        }

        //Return true if the zip file contains at least one file
        return size > 0;
    }

    public JsonElement getJsonFile(String fileName) {
        JsonParser parser = new JsonParser();
        Reader reader;
        try {
//            String temp = getClass().getResource(fileName).getPath();
//            System.out.println(temp);
            reader = new InputStreamReader(getClass().getResourceAsStream(fileName), "UTF-8");
            return parser.parse(reader);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String getFileContents(String fileName) {
        return getFileLines(fileName).stream().collect(Collectors.joining("\n"));
    }

    public List<String> getFileLines(String fileName) {
        BufferedReader reader;
        String line;

        ArrayList<String> list = new ArrayList<>();

        try {
            String temp = getClass().getResource(fileName).getPath();
            System.out.println(temp);
            InputStreamReader stream = new InputStreamReader(getClass().getResourceAsStream(fileName), "UTF-8");

            reader = new BufferedReader(stream);
            while ((line = reader.readLine()) != null) {
                if (!line.startsWith("#") && !line.isEmpty()) {
                    list.add(line.trim());
                }
            }

            reader.close();
            stream.close();

        } catch (FileNotFoundException e) {
            System.err.println(String.format("Could not find %s", fileName));
        } catch (IOException e) {
            e.printStackTrace();
        }

        return list;
    }

    @Deprecated
    public String getConfigValue(String key) {
        if (properties == null)
            loadPropertiesFile();
        return properties.getProperty(key);
    }

    @Deprecated
    private void loadPropertiesFile() {
        InputStream inputStream = null;
        properties = new Properties();
        try {
            inputStream = getClass().getClassLoader().getResourceAsStream("configurations/ui.properties");
            if (inputStream == null) {
                logger.info("Unable to find out the ui.properties file");
            }
            properties.load(inputStream);
        } catch (IOException e) {
            logger.error(e.getMessage());
        }
    }
}