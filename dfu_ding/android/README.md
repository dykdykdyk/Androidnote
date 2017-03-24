#uband1

手环 Android Demo 说明文档
1.进入HelloCordova界面 扫描设备，点击要连接的设备

2.a: 进入BLEInfoActivity 界面会自动连接,并打印连接信息
  
  b: 第一次连接成功后发生绑定指令（现在是调试发送的是超级绑定指令）,连接失败则点击菜单手动连接
  
  c: 先绑定成功或者登录成功后，再发送其他指令，不然手环在一定的时间后会自动断开连接
  
  d:第二次连接成功后发送的是请求登录指令 （现在调试阶段发送的是超级绑定指令）

操作步骤：

  第一次连接：

  扫描-->自动连接-->自动发送绑定指令-->其他操作。

  第二次连接：  

  扫描-->自动连接-->自动发送请求登录指令--> 其他操作。




2016-11-7 
初步实现DFU 空中升级

主要工作流程如下：
1，扫描蓝牙设备，连接蓝牙设备，查询蓝牙设备是否支持DFU服务（我这里就不检测了，哈哈）；
2，若支持DFU服务，那么将本地的固件通过蓝牙发送出去；
3，数据发送完毕，升级固件成功

简单介绍，具体看代码，不懂找我 QQ：1475579663：

1. 引用 Android-DFU-Library 这个库，里面集成相关功能好，只需调用就可以了；


2. 选择要上传的部件
  
				 DfuServiceInitiator starter = new DfuServiceInitiato(mPeripheral.device.getAddress())
						.setDeviceName(mPeripheral.device.getName())
						.setKeepBond(false);
//				if (mFileType == DfuService.TYPE_AUTO)
					starter.setZip(mFileStreamUri, mFilePath);
//				else {
//					starter.setBinOrHex(mFileType, mFileStreamUri, mFilePath).setInitFile(mInitFileStreamUri, mInitFilePath);
//				}
				
				starter.start(BLEInfoActivity.this, DfuService.class);





	@Override
	protected void onResume() {
		super.onResume();
        Log.i(tag, "onResume.........");
		DfuServiceListenerHelper.registerProgressListener(this, mDfuProgressListener);
	}

3./**
   * Dfu进度监听器
   */


	private  DfuProgressListener mDfuProgressListener = new DfuProgressListener() {
		/*
		 * 进度
		 **/
		@Override
		public void onProgressChanged(String deviceAddress, int percent,
				float speed, float avgSpeed, int currentPart, int partsTotal) {
			 Log.i("DfuProgressListener", "onProgressChanged");
			
		}
		/*
		 * 在目标设备上验证新固件时调用的方法。
		 * */
		@Override
		public void onFirmwareValidating(String deviceAddress) {
			 Log.i("DfuProgressListener", "onFirmwareValidating");
		}
		/*
		 * 错误信息
		 * 错误类型：
		 * DfuBaseService.ERROR_TYPE_COMMUNICATION_STATE, 
		 * DfuBaseService.ERROR_TYPE_COMMUNICATION, 
		 * DfuBaseService.ERROR_TYPE_DFU_REMOTE, 
		 * DfuBaseService.ERROR_TYPE_OTHER.
		 **/
		@Override
		public void onError(String deviceAddress, int error, int errorType,
				String message) {
			 Log.i("DfuProgressListener", "onError："+message);
		}
		@Override
		public void onEnablingDfuMode(String deviceAddress) {
		}
		
		@Override
		public void onDfuProcessStarting(String deviceAddress) {
			 Log.i("DfuProgressListener", "onDfuProcessStarting");
		}
		
		@Override
		public void onDfuProcessStarted(String deviceAddress) {
			 Log.i("DfuProgressListener", "Started...开始");
			
		}
		
		@Override
		public void onDfuCompleted(String deviceAddress) {
			 Log.i("DfuProgressListener", "onDfuCompleted..成功");
			
		}
		
		@Override
		public void onDfuAborted(String deviceAddress) {
		}
		
		@Override
		public void onDeviceDisconnecting(String deviceAddress) {
		}
		
		@Override
		public void onDeviceDisconnected(String deviceAddress) {
			 Log.i("DfuProgressListener", "onDeviceDisconnected...断开连接");			
		}
		
		@Override
		public void onDeviceConnecting(String deviceAddress) {
		}
		
		@Override
		public void onDeviceConnected(String deviceAddress) {
			 Log.i("DfuProgressListener", "onDeviceConnected....连接");			
		}
	};
