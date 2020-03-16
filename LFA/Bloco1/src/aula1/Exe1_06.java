package aula1;

import java.nio.file.*;
import java.util.*;
import java.io.*;

public class Exe1_06{
    public static void main(String[] args) throws IOException{
        List<String> corresp = Files.readAllLines(Paths.get(args[0]));
        Map<String,String> map = new HashMap<>();
        for(String line : corresp){
            map.put(line.substring(0,line.indexOf(" ")),line.substring(line.indexOf(" "),line.length()));
        }
        String resp = "";
        String newResp = "";
        boolean change = true;
        List<String> fich = Files.readAllLines(Paths.get(args[1]));
        for(String line : fich){
            String[] words = line.split(" ");
            for(String word : words){
                if(map.containsKey(word)){
                    resp = resp + " " + map.get(word);
                }else{
                    resp = resp + " " + word;
                }
            }
        }
        while(change){
            String[] words = resp.split(" ");
            change = false;
            for(String word : words){
                if(map.containsKey(word)){
                    newResp = newResp + " " + map.get(word);
                    change = true;
                }else{
                    newResp = newResp + " " + word;
                }
            }
            resp = newResp;
            newResp = "";
        }
        System.out.println(resp);
    }
}  