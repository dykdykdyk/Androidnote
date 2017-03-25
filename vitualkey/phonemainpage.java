	//返回
Instrumentation inst = new Instrumentation();
inst.sendKeyDownUpSync(KeyEvent.KEYCODE_BACK);

//设置系统静音
	AudioManager mAudioManager = (AudioManager) MainActivity.instance.getSystemService(Context.AUDIO_SERVICE);
	mAudioManager.setStreamVolume(AudioManager.STREAM_SYSTEM, 0, 0);//设置系统音量

//调低音量
   		mAudioManager = (AudioManager) MainActivity.instance.getSystemService(Context.AUDIO_SERVICE);
			mAudioManager.adjustStreamVolume(AudioManager.STREAM_MUSIC,AudioManager.ADJUST_LOWER,
                    AudioManager.FX_FOCUS_NAVIGATION_UP);

//调高音量

		mAudioManager = (AudioManager) MainActivity.instance.getSystemService(Context.AUDIO_SERVICE);
			mAudioManager.adjustStreamVolume(AudioManager.STREAM_MUSIC,AudioManager.ADJUST_RAISE,
                    AudioManager.FX_FOCUS_NAVIGATION_UP);
//返回手机主界面

			 intent = new Intent(Intent.ACTION_MAIN);
	            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);// 注意
	            intent.addCategory(Intent.CATEGORY_HOME);
	            MainActivity.instance.startActivity(intent);

//停止播放

	inst = new Instrumentation();
	    	inst.sendKeyDownUpSync(KeyEvent.KEYCODE_MEDIA_STOP);


			// 开始/停止播放
			 	inst = new Instrumentation();
      inst.sendKeyDownUpSync(KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE);
	//转到上一首
			inst = new Instrumentation();
	    	inst.sendKeyDownUpSync(KeyEvent.KEYCODE_MEDIA_PREVIOUS);

		//暂停
			inst = new Instrumentation();
	    	inst.sendKeyDownUpSync(KeyEvent.KEYCODE_MEDIA_PAUSE);

		//开始播放
			inst = new Instrumentation();
	    	inst.sendKeyDownUpSync(KeyEvent.KEYCODE_MEDIA_PLAY);

//转到下一首
			inst = new Instrumentation();
	    	inst.sendKeyDownUpSync(KeyEvent.KEYCODE_MEDIA_NEXT);