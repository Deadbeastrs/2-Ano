package aula13;

import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

public class FindPair {
	private String all;
	private SortedMap<String, Map<String,Integer>> words = new TreeMap<>();
	
	public FindPair(Path file) throws IOException {
		List<String> allLines = Files.readAllLines(file);
		this.all = String.join("", allLines);
		findAll();
	}
	
	private void findAll() throws IOException {
		List<String> temp = Arrays.asList(all.split("[\t||\n||.||,||:||'||,||;||?||!||-||*||{||}||=||+||&||/||(||)||[||]||\"||'||“||”||‘||’]"));
		String prevWord = temp.get(0);
		for(int i=1;i<temp.size();i++) {
			if(temp.get(i).length() >= 3) {
				if(words.containsKey(temp.get(i))) {
					Map <String, Integer> nextW = words.get(temp.get(i));
					if(nextW.containsKey(prevWord)) {
						nextW.put(prevWord, nextW.get(prevWord)+1);
					}
					else{
						nextW.put(prevWord,1);
					}
				}
				else{
					Map <String, Integer> nextW1 = new HashMap<>();
					nextW1.put(prevWord,1);
					words.put(temp.get(i), nextW1);
				}
			}
			prevWord = temp.get(i);
		}
		Path path = Paths.get("output.txt");
		BufferedWriter writer = Files.newBufferedWriter(path, Charset.forName("UTF-8"));
		words.entrySet().forEach(entry->{
			    try {
					writer.write((entry.getKey() + " " + entry.getValue().toString()) + "\n");
				} catch (IOException e) {
					e.printStackTrace();
				}
		});
		writer.close();
	}
}
