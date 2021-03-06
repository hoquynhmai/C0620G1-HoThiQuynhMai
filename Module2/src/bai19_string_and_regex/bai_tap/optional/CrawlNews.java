package bai19_string_and_regex.bai_tap.optional;

import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CrawlNews {
    public static void main(String[] args) {
        try {
            URL url = new URL("http://dantri.com.vn/the-gioi.html");

            // open the stream and put it into BufferedReader
            Scanner scanner = new Scanner(new InputStreamReader(url.openStream()));
            scanner.useDelimiter("\\Z");
            String content = scanner.next();

            // close scanner
            scanner.close();

            // remove all new line
            content = content.replaceAll("\\n+", " ");

            // regex
            Pattern pattern = Pattern.compile("<h class= 'name_news_title'><a href=\"(.*?)\" title=\"(.*?)\" </a>");
            Matcher matcher = pattern.matcher(content);
            while (matcher.find()) {
                System.out.println(matcher.group());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
