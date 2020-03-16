package aula1;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Exe1_04 {
	public static void main(String[] args) throws IOException {
		List<String> lines = Files.readAllLines(Paths.get("numbers.txt"));
		List<Integer> values = new ArrayList<>();
		Scanner sc = new Scanner(System.in);
		String[] input = sc.nextLine().replace("-", " ").split(" ");
		int temp = 1;
		int total = 0;
		for(String part : input) {
			for(String line : lines) {
				String part0 = line.split(" - ")[0];
				String part1 = line.split(" - ")[1];
				if(part.equals(part1)) {
					values.add(Integer.parseInt(part0));
				}
			}
		}
		for(int i=0;i<values.size();i = i + 1) {
			if(i == values.size()-1) {
				total = total + values.get(i);
				break;
			}
			if(values.get(i)>values.get(i+1)) {
				temp = temp * values.get(i);
				total = total + temp;
				temp = 1;
			}else {
				temp = temp * values.get(i);
			}
		}
		System.out.println(total);
		sc.close();
	}
}
