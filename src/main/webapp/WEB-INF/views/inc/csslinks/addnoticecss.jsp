<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<style>
		.addElement, .deleteElement {
			cursor: pointer;
			font-size: 12px;
			color: cornflowerblue;
		}
		
		.addElement { margin-left: 1px; }
		
		.fa-trash-o {
		    font-size: 20px;
		    background-color: #aaa;
		    border-radius: 3px;
		    color: white;
		    padding: 3px 7px;
		    cursor: pointer;
		}
		
		.noticeTitle {
			font-size: 15px;
			font-weight: bold;
			padding-left: 1px;
			margin-bottom: 10px;
			margin-top: 15px;
		}
		
		#noticeHeadContainer {
			padding: 15px;
			background-color: #eee;
		}
		
		#contentPcdata {
			margin-top: 0px;
		}
		
		.testPcdata {
			margin-top: 0px;
		}
		
		.fieldContainer {
			border: 3px solid skyblue;
			padding: 10px;
		}
		
		#noticeContent {
			height: 150px;
			outline: none;
			resize: none;
		}
		
		/* #dateContainer {
			margin-top: 20px;
		} */
		
		#reportContainer {
			margin-left: 30px;
			width: 200px;
		}
		
		#reportContainer label {
			margin-top: 7px;	
		}
		
		
		
		.testSubContainer {
			float: left;
			margin-right: 10px;
			margin-left: 3px;
		}
		
		
		
	</style>