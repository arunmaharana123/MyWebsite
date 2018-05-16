package org.arun.spring.utility;

import java.util.HashMap;
import java.util.Iterator;

public final class ImmutableClass {

	private final int id;
	private final String name;
	private final HashMap<String, String> testMap;
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	@SuppressWarnings("unchecked")
	public HashMap<String, String> getTestMap() {
		return (HashMap<String, String>) testMap.clone();
	}

	public ImmutableClass(int i, String n, HashMap<String, String> hm) {
		System.out.println("Performing Deep Copy for Object initialization");
		this.id = i;
		this.name = n;
		HashMap<String, String> tempMap = new HashMap<String, String>();
		String key;
		Iterator<String> it = hm.keySet().iterator();
		while (it.hasNext()) {
			key = it.next();
			tempMap.put(key, hm.get(key));
		}
		this.testMap = tempMap;
	}
	public static void main(String[] args) {
		HashMap<String, String> h1 = new HashMap<String, String>();
		h1.put("1", "first");
		h1.put("2", "second");

		String s = "original";

		int i = 10;

		ImmutableClass ce = new ImmutableClass(i, s, h1);

		System.out.println(s == ce.getName());
		System.out.println(h1 == ce.getTestMap());
		System.out.println("ce id:" + ce.getId());
		System.out.println("ce name:" + ce.getName());
		System.out.println("ce testMap:" + ce.getTestMap());
		i = 20;
		s = "modified";
		h1.put("3", "third");
		System.out.println("ce id after local variable change:" + ce.getId());
		System.out.println("ce name after local variable change:" + ce.getName());
		System.out.println("ce testMap after local variable change:" + ce.getTestMap());

		HashMap<String, String> hmTest = ce.getTestMap();
		hmTest.put("4", "new");

		System.out.println("ce testMap after changing variable from accessor methods:" + ce.getTestMap());

	}

}
