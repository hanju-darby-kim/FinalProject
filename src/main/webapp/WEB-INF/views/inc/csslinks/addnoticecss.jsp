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
		    font-size: 18px;
		    background-color: #aaa;
		    border-radius: 3px;
		    color: white;
		    padding: 3px 5px;
		    cursor: pointer;
		}
		
		.noticeTitle {
			font-size: 15px;
			font-weight: bold;
			padding-left: 1px;
			margin-bottom: 3px;
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
			padding: 15px;
		}
		
		#fieldContainer1 {
			background-color: #C8DDF1;
		}
		#fieldContainer2 {
			background-color: #CBEFFB;
			
		}
		#fieldContainer3 {
			background-color: #EBFBE3;
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
		
		.hireTypeContainer, .careerTypeContainer, .areaTypeContainer {
			float: left;
			margin-right: 30px;
		}
		
		.hireTypeContainer select, .careerTypeContainer select, .areaTypeContainer select {
			width: 70px;
		}
		
		.salary {
			margin-bottom: 20px;
		}
		
		.demandContainer {
			clear: both;
		}
		
		#demandEducationContainer .noticeTitle {
			margin-top: 0px;
		}
		
		select, .fancy-checkbox {
			float: left;
			margin-right: 7px;
		}
		
		.addField {
			margin-top: 10px;
			width: 100%;
		}
		
		.btnSubmit {
			margin-top: 10px;
		}
		
	</style>