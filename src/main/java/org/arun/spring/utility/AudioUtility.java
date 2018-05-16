package org.arun.spring.utility;

import java.io.File;
import org.jaudiotagger.audio.AudioFile;
import org.jaudiotagger.audio.AudioFileIO;

public class AudioUtility {

	public static String getDuration(String filePath) {
		try {

			File file = new File(filePath);
			//Player player = new Player(bis);
			int duration = 0;
			AudioFile audioFile = AudioFileIO.read(file);
			duration = audioFile.getAudioHeader().getTrackLength();

			System.out.print("time in Minutes=   " + (duration / 60) + ":"
					+ (duration % 60));
			return (duration / 60) + ":" + (duration % 60) + " Min";
		} catch (Exception e) {

		}
		return null;
	}
}
