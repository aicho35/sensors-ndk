package com.example.sensors;

public class Sensors {

	static{;
		System.loadLibrary("sensors");
	}
	
	public static native void init();	
}
