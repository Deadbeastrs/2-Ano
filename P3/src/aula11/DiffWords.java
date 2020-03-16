package aula11;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.AbstractMap.SimpleEntry;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.function.Function;
import java.util.stream.Collectors;

public class DiffWords {
	private Path file;
	private List<String> temp;
	
	public DiffWords(String nomeFich) throws IOException {
		file = Paths.get(nomeFich);
		temp = Files.readAllLines(file);
	}
	
	public int getDiffWords() {
		Set<String> lines = new HashSet<>();
		for(String line : temp) {
			lines.addAll(Arrays.asList(line.split(" ")));
		};
		return lines.size();
	}
	
	public void printOccurrence() {
		TreeMap<String,Integer> map = new TreeMap<>();
		for(String line : temp){
			String[] words = line.split(" ");
			for(String word : words) {
				if(map.putIfAbsent(word, 1) != null) {
					int temp = map.get(word);
					map.put(word,temp+1);
				};
			}
		}
		System.out.println(map);
	}
	
	public long getDiffWordsStream() throws IOException {
		 return Files.lines(file).flatMap(linha -> Arrays.stream(linha.split(" "))).distinct().count();
	}
	public void printOccurenceStream() throws IOException {
				System.out.println(Files.lines(file)
				.flatMap(linha -> Arrays.stream(linha.split(" ")))
				.sorted((e1, e2) -> e2.compareTo(e1))
				.map(palavra -> palavra.toLowerCase())
				.filter(palavra -> !palavra.isEmpty())
				.collect(Collectors.groupingBy(w -> w, TreeMap::new, Collectors.counting())));
	}
	
}


