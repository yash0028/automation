package StringMan;

public class AlphaNumeric {
	
	// CPP program to split an alphanumeric 
	// string using stringbuffer 

 
		static void splitString(String str) 
		{ 
			StringBuffer alpha = new StringBuffer();
			StringBuffer num = new StringBuffer();
			StringBuffer special = new StringBuffer(); 
			int alcount=0;
			int numcount=0;
			int spcount=0;
			
			
			for (int i=0; i<str.length(); i++) 
			{ 
				if (Character.isDigit(str.charAt(i)))
				{
					num.append(str.charAt(i)); 
					numcount++;
				}
					
				else if(Character.isAlphabetic(str.charAt(i)))
				{
					alpha.append(str.charAt(i)); 
					alcount++;
				}
					else
					special.append(str.charAt(i)); 
				    spcount++;
			} 
		
			System.out.println("Alpha Dups :" +alpha+" count :" +alcount); 
			
			System.out.println("Num Dups :" +num+" count :" +numcount); 
			System.out.println("Spec Dups :" +special+" count :" +spcount); 
		} 
		
		// Driver method 
		public static void main(String args[]) 
		{ 
			String str = "geeks01$$for02geeks03!@!!"; 
			splitString(str); 
		} 
	} 

	
	
