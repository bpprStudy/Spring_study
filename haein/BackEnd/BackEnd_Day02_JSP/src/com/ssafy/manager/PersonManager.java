package com.ssafy.manager;

import java.util.ArrayList;
import java.util.List;

import com.ssafy.dto.Person;

public class PersonManager {
	private List<Person> list = new ArrayList<>();
	
	private static PersonManager manager = new PersonManager();
	
	private PersonManager() {
	}
	
	public static PersonManager getInstance() {
		return manager;
	}
	
	public void regist(Person p) {
		list.add(p);
	}
	
	public List<Person> getAll() {
		return list;
	}
}
