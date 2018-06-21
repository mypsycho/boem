package org.mypsycho.emf.modit.reverit.test;

import java.util.Arrays;
import java.util.List;

import org.junit.Test;

public class SplitTest {

	@Test
	public void nominal() {
		for (String tested : Arrays.asList("", "simple", "double;double", "more; more;more", " startspace", " endspace",
				";;empties;;;  some  ;; more;;")) {
			List<String> it = Arrays.asList(tested.split("\\s*;\\s*"));
			System.out.println(tested + ":" + it + " l:" + it.size());
		}

	}
}
