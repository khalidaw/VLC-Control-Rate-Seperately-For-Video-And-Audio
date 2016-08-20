package editor;
//package editor;
//
//import java.io.FileNotFoundException;
//import java.io.PrintWriter;
//import java.io.UnsupportedEncodingException;
//import java.util.ArrayList;
//import java.util.Collections;
//import java.util.List;
//
//import editor.data.SyncType;
//
//public class MaskCreator {
//
//	static JEvalWrapper jeval = new JEvalWrapper();
//	float videoSecondsCounter = 0;
//	float audioSecondsCounter = 0;
//	List<data> points;
//
//	public enum Command {
//		opWait, opRate, opPause, opPlay, opSeek
//	}
//
//	public class Operation {
//		public Command op;
//		public float num;
//
//		public Operation(Command o, float n) {
//			op = o;
//			num = n;
//		}
//
//		public String getOpString() {
//			switch (op) {
//			case opWait:
//				return "sleep";
//			case opRate:
//				return "rate";
//			case opPause:
//				// return "rate"; // instead of pausing, we do rate 100
//				return "pause";
//			case opPlay:
//				return "rate";
//				// return "play";
//			case opSeek:
//				return "seek";
//			default:
//				assert (false);
//				return "Unsupported";
//			}
//		}
//	}
//
//	public List<Operation> audioMask = new ArrayList<Operation>();
//	public List<Operation> videoMask = new ArrayList<Operation>();
//
//	public MaskCreator(List<data> pList) {
//		points = pList;
//		doMaskFiles();
//		printToFiles();
//	}
//
//	void printToFiles() {
//		PrintWriter writerAudio = null;
//		try {
//			writerAudio = new PrintWriter("/home/vlc/simpleMaskAudio", "UTF-8");
//		} catch (FileNotFoundException | UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		PrintWriter writerVideo = null;
//		try {
//			writerVideo = new PrintWriter("/home/vlc/simpleMaskVideo", "UTF-8");
//		} catch (FileNotFoundException | UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//		// audio file
//		for (Operation p : audioMask) {
//			writerAudio.println(p.getOpString() + " " + p.num);
//		}
//
//		// video file
//		for (Operation p : videoMask) {
//			writerVideo.println(p.getOpString() + " " + p.num);
//		}
//
//		writerAudio.close();
//		writerVideo.close();
//	}
//
//	void doMaskFiles() {
//		Collections.sort(points);
//
//		/**
//		 * Not important, only needed for duration first time
//		 */
//		data headDummyData = new data();
//		headDummyData.startInSeconds = 0;
//		points.add(0, headDummyData);
//
//		/** end of dummy point */
//
//		/**
//		 * these variables will keep tracking of duration of real movie
//		 * according to audio and video
//		 */
//		float durationAudioInMovie = 0.0f;
//		float durationVideoInMovie = 0.0f;
//		/** end of tracking duration */
//
//		// TODO 1. add last point to be the last second in video
//		// 2. add dummy point as first second (second 0).
//		for (int i = 1; i < points.size(); i++) {
//			data currentData = points.get(i);
//			float dt = currentData.dt;
//			data.SyncType sType = currentData.type;
//			float durationAll = currentData.startInSeconds
//					- points.get(i - 1).startInSeconds;
//			float prevStartInSec = points.get(i - 1).startInSeconds;
//			float duration; // for each iteration
//
//			switch (sType) {
//			case SyncTypeDT:
//			case SyncTypeWait:
//				duration = durationAll;
//				break;
//			default:
//				duration = 1;
//				break;
//			}
//
//			for (float durationCount = 0; durationCount < durationAll; durationCount += duration) {
//
//				float soundRate = jeval.getValue(currentData.audioFunc,
//						points.get(i - 1).startInSeconds + durationCount);
//				float videoRate = jeval.getValue(currentData.videoFunc,
//						points.get(i - 1).startInSeconds + durationCount);
//
//				switch (sType) {
//				case SyncTypeDontWait:
//					audioMask.add(new Operation(Command.opRate, soundRate));
//					audioMask.add(new Operation(Command.opWait, duration
//							/ soundRate));
//					videoMask.add(new Operation(Command.opRate, videoRate));
//					videoMask.add(new Operation(Command.opWait, duration
//							/ videoRate));
//					audioSecondsCounter += duration / soundRate;
//					videoSecondsCounter += duration / videoRate;
//
//					// track
//					durationAudioInMovie += duration * soundRate;
//					durationVideoInMovie += duration * videoRate;
//
//					break;
//				case SyncTypeWait:
//
//					float timeForVideo = (durationAll
//							+ prevStartInSec - durationVideoInMovie)
//							/ videoRate;
//					float timeForAudio = (durationAll
//							+ prevStartInSec - durationAudioInMovie)
//							/ soundRate;
//
//					float minTime = timeForVideo < timeForAudio ? timeForVideo
//							: timeForAudio;
//
//					videoMask.add(new Operation(Command.opRate, videoRate));
//					videoMask.add(new Operation(Command.opWait, minTime));
//					durationVideoInMovie += videoRate * minTime;
//
//					audioMask.add(new Operation(Command.opRate, soundRate));
//					audioMask.add(new Operation(Command.opWait, minTime));
//					durationAudioInMovie += soundRate * minTime;
//
//					/**
//					 * audioSecondsCounter += duration/soundRate;
//					 * videoSecondsCounter += duration/videoRate; maybe no need
//					 * for these
//					 */
//					// // // time left after faster arrives
//					// //
//					// if (duration + durationCount < durationAll )
//					// {
//					// break;
//					// }
//
//					float timeForVideoToArrive = (durationAll
//							+ prevStartInSec - durationVideoInMovie)
//							/ videoRate;
//					float timeForAudioToArrive = (durationAll
//							+ prevStartInSec - durationAudioInMovie)
//							/ soundRate; // khalid changed this may be a bug
//											// TODO CHECK
//
//					if (timeForVideoToArrive > timeForAudioToArrive) {
//						audioMask.add(new Operation(Command.opRate, 0.1f)); // pause,
//																			// wait,
//																			// play
//						float timeToWait = (timeForVideoToArrive - timeForAudioToArrive)
//								/ (videoRate - 0.1f);
//						audioMask.add(new Operation(Command.opWait,
//								timeToWait)); // audio waits
//																// for video
//						// audioMask.add(new
//						// Operation(Command.opPlay,videoRate)); // play with
//						// last known rate
//						audioMask.add(new Operation(Command.opRate, videoRate)); // amawasi
//						videoMask.add(new Operation(Command.opWait, timeToWait));
//						durationVideoInMovie += videoRate * timeToWait;
//						durationAudioInMovie += 0.1 * timeToWait;
//					} else {
//						videoMask.add(new Operation(Command.opRate, 0.1f)); // pause,
//																			// wait,
//																			// play
//						float timeToWait = (timeForAudioToArrive - timeForVideoToArrive)
//								/ (soundRate - 0.1f);
//						videoMask.add(new Operation(Command.opWait,
//								timeToWait)); // audio waits
//																// for video
//						// videoMask.add(new
//						// Operation(Command.opPlay,soundRate)); // play with
//						// last known rate
//						videoMask.add(new Operation(Command.opRate, soundRate)); // amawasi
//						audioMask.add(new Operation(Command.opWait, timeToWait));
//						durationAudioInMovie += soundRate * timeToWait;
//						durationVideoInMovie += 0.1 * timeToWait;
//					}
//					// track
//
//					break;
//				case SyncTypeDT:
//
//					// Assumption:
//					// Audio and Video should be at the same time in the
//					// previous sync point.
//
//					// who will arrive before
//					Boolean audioWillAriveBefore = true;
//
//					if ((currentData.startInSeconds - durationAudioInMovie)
//							/ soundRate > (currentData.startInSeconds - durationVideoInMovie)
//							/ videoRate) {
//						audioWillAriveBefore = false;
//					}
//
//					if (audioWillAriveBefore == true) { // TODO THIS WAS
//														// CHANGED, please check
//														// and remove this
//														// comment
//						float audioDurationTillThePoint = currentData.startInSeconds
//								- durationAudioInMovie;
//
//						videoMask.add(new Operation(Command.opRate, videoRate));
//						videoMask.add(new Operation(Command.opWait,
//								audioDurationTillThePoint / soundRate));
//						audioMask.add(new Operation(Command.opRate, soundRate));
//						audioMask.add(new Operation(Command.opWait,
//								(audioDurationTillThePoint + dt) / soundRate));
//
//						// track
//						durationAudioInMovie = currentData.startInSeconds + dt;
//
//						float movieTimeUntilThePoint_plus_dt = dt
//								* soundRate
//								+ currentData.startInSeconds
//								- (durationVideoInMovie + (audioDurationTillThePoint / soundRate)
//										* videoRate);
//
//						float remainTime = movieTimeUntilThePoint_plus_dt;
//						float newVideoRate = remainTime / dt;
//						videoMask.add(new Operation(Command.opRate,
//								newVideoRate));
//						videoMask.add(new Operation(Command.opWait, dt));
//						videoMask.add(new Operation(Command.opRate, soundRate));
//
//						// track
//						durationVideoInMovie = currentData.startInSeconds + dt;
//
//					} else { // video faster case
//						float videoDurationTillThePoint = currentData.startInSeconds
//								- durationVideoInMovie;
//
//						audioMask.add(new Operation(Command.opRate, soundRate));
//						audioMask.add(new Operation(Command.opWait,
//								videoDurationTillThePoint / videoRate));
//						videoMask.add(new Operation(Command.opRate, videoRate));
//						videoMask.add(new Operation(Command.opWait,
//								(videoDurationTillThePoint + dt) / videoRate));
//
//						// track
//						durationVideoInMovie = currentData.startInSeconds + dt;
//
//						float movieTimeUntilThePoint_plus_dt = dt
//								* videoRate
//								+ currentData.startInSeconds
//								- (durationAudioInMovie + (videoDurationTillThePoint / videoRate)
//										* soundRate);
//
//						float remainTime = movieTimeUntilThePoint_plus_dt;
//						float newAudioRate = remainTime / dt;
//						audioMask.add(new Operation(Command.opRate,
//								newAudioRate));
//						audioMask.add(new Operation(Command.opWait, dt));
//						audioMask.add(new Operation(Command.opRate, videoRate));
//
//						// track
//						durationAudioInMovie = currentData.startInSeconds + dt;
//
//					}
//
//					break;
//				default:
//					assert (false);
//				}
//
//			}
//
//		}
//	}
//}