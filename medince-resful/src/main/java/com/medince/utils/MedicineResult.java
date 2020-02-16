package com.medince.utils;

public class MedicineResult {

		private Integer status;
	
		private String msg;

		private Object data;
		
		public static MedicineResult build(Integer status, String msg, Object data) {
			return new MedicineResult(status, msg, data);
		}

		public static MedicineResult ok(Object data) {
			return new MedicineResult(data);
		}

		public static MedicineResult ok() {
			return new MedicineResult(null);
		}

		public static MedicineResult build(Integer status, String msg) {
			return new MedicineResult(status, msg, null);
		}
		
		public MedicineResult() {

		}

		public MedicineResult(Integer status, String msg, Object data) {
			this.status = status;
			this.msg = msg;
			this.data = data;
		}

		public MedicineResult(Object data) {
			this.status = 200;
			this.msg = "OK";
			this.data = data;
		}

		public Integer getStatus() {
			return status;
		}

		public void setStatus(Integer status) {
			this.status = status;
		}

		public String getMsg() {
			return msg;
		}

		public void setMsg(String msg) {
			this.msg = msg;
		}

		public Object getData() {
			return data;
		}

		public void setData(Object data) {
			this.data = data;
		}
		
		
}
