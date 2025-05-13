package kr.or.iei.common;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ListData <T> { //제네릭
	
	ArrayList<T> list; //제네릭
	String pageNavi;
}
