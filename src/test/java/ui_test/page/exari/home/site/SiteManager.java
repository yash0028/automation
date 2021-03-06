package ui_test.page.exari.home.site;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.home.site.subpages.*;

public class SiteManager {

    private final WebDriver driver;

    /*
    CONSTRUCTOR
     */

    public SiteManager(WebDriver driver) {
        this.driver = driver;
    }

    /*
    CLASS METHODS
     */

    public TestSitePage getTestSitePage() {
        return new TestSitePage(driver);
    }

    public NortheastUHNSitePage getNortheastUHNSitePage() {
        return new NortheastUHNSitePage(driver);
    }

    public CentralUHNSitePage getCentralUHNSitePage() {
        return new CentralUHNSitePage(driver);
    }

    public WestUHNSitePage getWestUHNSitePage() {
        return new WestUHNSitePage(driver);
    }

    public SouthEastUHNSitePage getSouthEastUHNSitePage() {
        return new SouthEastUHNSitePage(driver);
    }

    public NationalUHNSitePage getNationalUHNSitePage() {
        return new NationalUHNSitePage(driver);
    }

    public GenericSitePage getSitePage(Site site) {
        switch (site) {
            case CENTRAL:
                return getCentralUHNSitePage();
            case NORTHEAST:
                return getNortheastUHNSitePage();
            case WEST:
                return getWestUHNSitePage();
            case SOUTHEAST:
                return getSouthEastUHNSitePage();
            case NATIONAL:
                return getNationalUHNSitePage();
            case TEST:
            default:
                return getTestSitePage();
        }
    }

    public GenericSitePage getSitePage(String site) {
        return getSitePage(Site.string2Site(site));
    }

    /*
    UTILITY CLASS
     */

    public enum Site {
        TEST,
        CENTRAL,
        WEST,
        NORTHEAST,
        SOUTHEAST,
        NATIONAL;

        public static Site string2Site(String site) {
            site = site.toUpperCase();

            if (site.contains(CENTRAL.name())) {
                return CENTRAL;
            }

            if (site.contains(NORTHEAST.name())) {
                return NORTHEAST;
            }

            if (site.contains(SOUTHEAST.name())) {
                return SOUTHEAST;
            }

            if (site.contains(WEST.name())) {
                return WEST;
            }

            if (site.contains(NATIONAL.name())) {
                return NATIONAL;
            }

            return TEST;
        }
    }
}
