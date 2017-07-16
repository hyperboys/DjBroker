function CarModel(carbrandid){
	var carmodel_loadsave=$("#carmodel_loadsave").val();
	var caryear = $("#categories_insurance_year").val();

	if(carbrandid!='-' && caryear!='-'){
		$.ajax({
			type: "POST", 
			url: "/sql/new_mysql-car.php", 
			dataType: 'json',
			data: "status=model&page=selected&time="+new Date().getTime()+"&carbrandid="+carbrandid+"&CARYEAR="+caryear, 
			success: function(msg)
			{
				$("#categories_insurance_age").html("");
				if(msg!=null){
					if(msg==1){
						$("#categories_insurance_age").html("<option value='notfound'>ไม่พบรุ่นรถยนต์</option>");
						$("#select_insurance_02").html("<option value='notfound'>ไม่พบรุ่นย่อย</option>");
						//alert(msg);
						$("#CoverMin").val("");
						$("#CoverMax").val("");
						return false;
					}
	 
					$(".btn-block").attr("disabled",false);
					$("#categories_insurance_age").html('');
					var size=msg.Datas.Data.length;					
					var x=0;
					var html="";
					var series = new Array();
					html+="<option value='-'>เลือกรุ่นรถยนต์</option>";
					while(x<size){
						if(carbrandid=='BMW'){
							var Initial = msg.Datas.Data[x].MODEL.substr(0,1); 
							if(Initial==1 || Initial==3 || Initial==5 || Initial==6 || Initial==7 || Initial==8){
								if(!(series[Initial])){
									if(Initial!=1){
										html+="</optgroup>";
									}
									html+="<optgroup label='Series "+Initial+"'>";
									series[Initial] = 1;
								}
							}else if(Initial=='L' || Initial=='M' || Initial=='X' || Initial=='Z'){
								if(!(series[Initial])){
									html+="</optgroup>";
									html+="<optgroup label='"+Initial+" Models'>";
									series[Initial] = 1;
								}
							}
						}else if(carbrandid=='MERC'){
							Initial = msg.Datas.Data[x].MODEL.substr(0,1);
						if(Initial=='A' || Initial=='B' || Initial=='E' || Initial=='G' || Initial=='M' || Initial=='R' || Initial=='V'){
								if(!(series[Initial])){
									if(Initial != 'A'){
										html+="</optgroup>";
									}
									html+="<optgroup label='"+Initial+" Class'>";
									series[Initial] = 1;
								}
							}
							if(Initial=='C' || Initial=='S'){
								if(!(series[Initial])){
									html+="</optgroup>";
									html+="<optgroup label='"+Initial+" Class'>";
									series[Initial] = 1;
								}
							}	
							var Initial_2 = msg.Datas.Data[x].MODEL.substr(1,1);
							if(Initial_2=='L'){
								var name = Initial+Initial_2;
								if(!(series[name])){
									html+="</optgroup>";
									html+="<optgroup label='"+name+" Class'>";
									series[name] = 1;
								}
							}
							var Initial_3 = msg.Datas.Data[x].MODEL.substr(1,2);
							if(Initial_3=='LC' || Initial_3=='LK' || Initial_3=='LS'){
								var name = Initial+Initial_3;
								if(!(series[name])){
									html+="</optgroup>";
									html+="<optgroup label='"+name+" Class'>";
									series[name] = 1;
								}
							}
						}
							html+="<option value='"+msg.Datas.Data[x].ID+"'";
							if(carmodel_loadsave){
								if(msg.Datas.Data[x].ID==carmodel_loadsave){
									html+="selected";	
								}
							}
							html+=">"+msg.Datas.Data[x].MODEL+"</option>";
						x++;
					}
	 
					$("#categories_insurance_age").html(html);
					$("#select_insurance_02").html("<option value='-'>เลือกรุ่นย่อย (จำนวนประตู) (ราคาซื้อ)</option>");
				}
			} 
		});
	}else{
		$("#categories_insurance_age").html("<option value='-'>เลือกรุ่นรถยนต์</option>");
		$("#select_insurance_02").html("<option value="-">เลือกรุ่นย่อย (จำนวนประตู) (ราคาซื้อ)</option>");
	}
}
 
function getsubmodel(carbrandid,CARMODEL,caryear,type){
	if(carbrandid && CARMODEL && caryear){
    	//alert(engine_onload);
		$.ajax({
			type: "POST", 
			url: "/sql/new_mysql-car.php", 
			data: "status=submodel&page=selected&Makecode="+carbrandid+"&CARMODEL="+CARMODEL+"&CarYear="+caryear+"&type="+type, 
			success: function(msg)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
			{ 
				if(msg==""){
					msg="<option value='notfound'>ไม่พบรุ่นย่อย</option>"
				}else{
					$("#select_insurance_02").html(msg);
					cc();
				}
			}
		});	
	}
}
function cc(){
	submodel=$("#select_insurance_02").val();
	//alert(vehiclekey);
	vehiclekey = submodel.split(",");
	

	$('#categories_insurance_cc').val(vehiclekey[1]);
	//alert($('#categories_insurance_cc').val());
}
 
function getCC(carbrandid,CARMODEL,caryear,stage){
	if(carbrandid && CARMODEL && caryear){
		var CC_LOAD=$("#cc_loadsave").val();
 
		var optionid="";
		$.ajax({
			type: "POST", 
			url: "/sql/FilterSubmodel_table.php", 
			data: "status=submodel&page=selected&Makecode="+carbrandid+"&CARMODEL="+CARMODEL+"&CarYear="+caryear+"&CC_LOAD="+CC_LOAD, 
			success: function(msg)
			{
				$("#vehiclekey").html(msg);
				//$("#categories_insurance_cc").val($("#cc_loadsave").val());
				optionid=$('select#vehiclekey option').length;
 
				if(stage==1){
					//$("#categories_insurance_brand").msDropdown().data("dd").refresh();
				}else{
					if(optionid==2){
					//$("#categories_insurance_cc").msDropDown({mainCSS:'dd_categories_1'}).data("dd").open();
					}
 
				}
 
				if(optionid==2){
					$("#vehiclekey").html("<option value="-">เลือกรุ่นย่อย (จำนวนประตู) (ราคาซื้อ)</option>"+msg);
					/*$("#categories_insurance_cc").msDropdown().data("dd").destroy();
					$("#categories_insurance_cc").msDropDown({mainCSS:'dd_categories_1'});*/
 
				}else{
					var isFirefox = typeof InstallTrigger !== 'undefined';
					/*$("#categories_insurance_cc").msDropdown().data("dd").destroy();
					$("#categories_insurance_cc").msDropDown({mainCSS:'dd_categories_1'});*/
					if(isFirefox===true){
						//$("#categories_insurance_cc").msDropDown({mainCSS:'dd_categories_1'}).data("dd").open();
					}
				}
 
				getcarprice(carbrandid,CARMODEL,caryear);
 
			}
		});	
	}
}
 
function getcarprice(carbrand,carmodel,caryear){
	var Carprice="";
	var engine =$("#categories_insurance_cc").val();
	var cc_loadsave=$("#cc_loadsave").val();
	var d = new Date();
	var n = d.getFullYear();
	var NextYear=$("#year_cover").val();
	var VEHICLEKEY=$("#vehiclekey").val();
	if($("#categories_insurance_cc option").length <3){
		engine=$($("#categories_insurance_cc option")[1]).val();
	}

	var stageCover=$("#current_Stage").val();
	var CurentPrice="";
	var VEHICLEKEY="";
	if($("#select_insurance_02").val() && typeof $("#select_insurance_02").val()!="undefined"){
	    VEHICLEKEY=$("#select_insurance_02").val();
	}

	if(engine==0 || typeof engine == "undefined"){ 
		  engine =$('input[name="CC"]').val();
	    if(engine==0 || typeof engine == "undefined"){
			 engine=""; 
		}
	}
	if (typeof VEHICLEKEY == "undefined") {
			 VEHICLEKEY="";
	}

	$.ajax({
		type: "POST", 
		url: "/sql/carprice.php", 
		data: "status=carprice&page=selected&Makecode="+carbrand+"&carmodel="+carmodel+"&caryear="+caryear+"&engine="+engine+"&VEHICLEKEY="+VEHICLEKEY+"&stageCover="+stageCover+"&CurentPrice="+CurentPrice+"&NextYear="+NextYear, 
		success: function(msg)
		{ 
			//alert(msg);
			if(msg)
			{
				if(stageCover=="A"){
					Carprice=msg.split("|");
					$("#CoverMin").val(Carprice[0]);
					$("#CoverMax").val(Carprice[1]);
				}else{
					$("#CoverMinx").html(msg);
				}
			}
		}
	});	
}

function getcarBY_CC(){
	var caryear = $("#categories_insurance_year").val();
	var carbrandid=$("#categories_insurance_brand").val();
	var CARMODEL=$("#categories_insurance_age").val();
	if(carbrandid && CARMODEL && caryear){
		getcarprice(carbrandid,CARMODEL,caryear);
	}
}
 
function setCookie(cname,cvalue,exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires=" + d.toGMTString();
    document.cookie = cname+"="+cvalue+"; "+expires;
}

function alert_box(txt_alert,close_focus){
	$("#popup_txt").html(txt_alert);
	$("#my_popup").popup({
		"opacity" : 0.7,
		"autoopen" : true,
		"escape" : false,
		"blur" : false
	});
	if(close_focus!=""){
		if(close_focus=="/"){
			window.location="/";
		}else{
			$("#"+close_focus).focus();
		}
		
	}
}

function validate_car(){
	var checkText=0;
	var categories_insurance=$("#categories_insurance").val();
	var categories_insurance_year=$("#categories_insurance_year").val();
	var categories_insurance_brand=$("#categories_insurance_brand").val();
	var categories_insurance_age=$("#categories_insurance_age").val();
	var vehiclekey=$("#select_insurance_02").val();
	var old_company=$("#OLD_COMPANY").val();

 	//alert(categories_insurance+"-"+categories_insurance_year+"-"+categories_insurance_brand+'-'+categories_insurance_age+'-'+vehiclekey);
	if(categories_insurance_year=="-"||categories_insurance_year==""){
		checkText=1;
		alert_box('กรุณาเลือกปีรถยนต์','');
		return false;
	}
	if(categories_insurance_brand=="-"||categories_insurance_brand==""){
		checkText=1;
		alert_box('กรุณาเลือกยี่ห้อรถยนต์','');
		return false;
	}
 	if(categories_insurance_age=='notfound'||vehiclekey=='notfound'){
 		if(vehiclekey=='notfound'){
 			checkText=1;
			alert_box('ไม่พบรุ่นรถยนต์ในระบบ','');
			return false;
 		}
 		if(categories_insurance_age=='notfound'){
 			checkText=1;
			alert_box('ไม่พบรุ่นย่อยในระบบ','');
			return false;
 		}
 	}
 	else{
 		if(categories_insurance_age=="-"||categories_insurance_age==""){
			checkText=1;
			alert_box('กรุณาเลือกรุ่นรถยนต์','');
			return false;
		}
		if(vehiclekey=="" || vehiclekey=="-"){
			checkText=1;
			alert_box('กรุณาเลือกรุ่นย่อย','');
			return false;
		}
 	}
	
	if(old_company=="" && $("#PRODUCTPLAN").val()=="SALARYMAN"){
		checkText=1;
		alert_box('กรุณาเลือก บริษัทเดิมที่ทำประกันภัย','');
		return false;
	}
	if($("#oldexpirydate").val()==""){
		checkText=1;
		alert_box('กรุณาเลือกเดือนที่ต้องการให้คุ้มครอง','');
		return false;
	}
	if(old_company=="BKI"){
		checkText=1;
		alert_box('ขออภัยโปรโมชั่นเฉพาะลูกค้าใหม่','/');
		return false;
	}
 	//alert(checkText);
	if(checkText==0){
		setCookie("mt_promotion_page_cookie","",1);
		/*var formAction = "ประกันภัยรถยนต์/ราคาประกันภัยรถยนต์/"+categories_insurance+"/"+categories_insurance_brand+"/"+categories_insurance_age+"/"+categories_insurance_year+"/"+categories_insurance_cc+"/"+$("#CARUSAGE").val()+"/"+$("#CoverMin").val()+"/"+$("#CoverMax").val()+"/"+$("#page").val();
 		 $("#searchCar").attr("action", formAction);*/
		 $.isLoading({ text: "กรุณารอสักครู่...." });
		setTimeout(function(){ $.isLoading('hide'); $('#searchCar').submit(); }, 800);	
	}	
}
 
function plate_search(){
	var txt="";
	var plateid=$("#plateid").val();
	var categories_insurance_province=$("#categories_insurance_province").val();
	var insurelevel=$("#categories_insurance").val();
	if(plateid==""){
		txt=" กรุณาระบุป้ายทะเบียน <br/>";
	}
	if(categories_insurance_province==""){
		txt+=" กรุณาระบุจังหวัดตามป้ายทะเบียน";
	}
	if(txt){
		alert_box(txt,'');
		return false;
	}

	$.isLoading({ text: "กรุณารอสักครู่...." });
	var txtCar="";
	$("#no_car").html("");
	var cutValue="";
	$.ajax({
		type: "POST", 
		url: "/sql/product_plate_search.php", 
		data: "plateid="+plateid+"&categories_insurance_province="+categories_insurance_province, 
		success: function(msg)
		{ 
		
		if (msg.indexOf('Warning') >=1 ) {
			alert("ไม่สามารถใช้งานระบบได้ในขณะนี้");
			$.isLoading( "hide" );
			$("#categories_insurance_year").prop('selectedIndex', 0);;
			$("#categories_insurance_year").val('-');
			$("#categories_insurance_brand").val('');
			return false;
		}

		ClearCar();
		cutValue=msg.split("|");
		if(insurelevel){
			$("#categories_insurance").val(insurelevel);
		}else{
			$("#categories_insurance").val(1);
		}

			if((cutValue[0].indexOf(1))>=1){
				$("#categories_insurance_brand").val(cutValue[1]);
				$("#carmodel_loadsave").val(cutValue[2]);
				$("#CoverMin").val(cutValue[3]);
				$("#CoverMax").val(cutValue[4]);
				$("#categories_insurance_year").val(cutValue[7]);
				setTimeout(function(){

				 }, 250);	
				CarModel(cutValue[1]);
				getsubmodel(cutValue[1],cutValue[2],cutValue[7],1);
				$(".form_a").show();
				$(".form_a_step2").hide();
				$(".form_b").hide();
			}else{
				if(cutValue[1] && cutValue[8]){
					//txtCar="ไม่พบรถยนต์ในระบบ รถยนต์ของท่านที่เคยทำประกันคือ  "+cutValue[1]+" "+cutValue[2]+" CC "+cutValue[8]+" ปี "+cutValue[7];
					//txtCar="ไม่พบข้อมูลในระบบ";
					//alert("ไม่พบข้อมูลในระบบ");

					$("#categories_insurance_year").prop('selectedIndex', 0);
					$("#categories_insurance_year").val('-');
					$("#categories_insurance_brand").val('');
					/*$.magnificPopup.open({
					  items: {
						src: '<div class="white-popup Box_Car1">ไม่พบเลขทะเบียนนี้ในระบบ	<br/><br/><a class="btnCar" onclick="$.magnificPopup.close();" >ระบุทะเบียนใหม่</a><br/><br/><a class="btnCar"onclick="$.magnificPopup.close();H_S(1);$(\'.form_b\').hide();" >ค้นหาตามรุ่นรถ</a></div></div></div></div>', // can be a HTML string, jQuery object, or CSS selector
						type: 'inline',

					  }
					});*/
					alert_box("ไม่พบเลขทะเบียนนี้ในระบบ",'');
					return false;

				}else{
					//txtCar="ไม่พบข้อมูลในระบบ";
					$("#categories_insurance_year").prop('selectedIndex', 0);
					$("#categories_insurance_year").val('-');
					$("#categories_insurance_brand").val('');
					/*$.magnificPopup.open({
					  items: {
						src: '<div class="white-popup Box_Car1">ไม่พบเลขทะเบียนนี้ในระบบ	<br/><br/><a class="btnCar" onclick="$.magnificPopup.close();" >ระบุทะเบียนใหม่</a><br/><br/><a class="btnCar" onclick="$.magnificPopup.close();H_S(1);$(\'.form_b\').hide();" >ค้นหาตามรุ่นรถ</a></div></div></div></div>', // can be a HTML string, jQuery object, or CSS selector
						type: 'inline',

					  }
					});*/
					alert_box("ไม่พบเลขทะเบียนนี้ในระบบ",'');
					return false;
					//alert("ไม่พบข้อมูลในระบบ");

				}
				$("#no_car").html(txtCar)
			}
			$("select.boxsubcar").prop('selectedIndex', 0);

			 $.isLoading( "hide" );
			$(".detail-search").click();					 
		}
 
	});
}
 
function H_S(str_car){
	if(str_car==1){
		$(".form_a").show();
		$(".form_a_step2").hide();
	}
}
 
function ClearCar(){
	$("#categories_insurance_year").val("-");
	$("#categories_insurance_brand").val("-");
	$("#categories_insurance_age").html("<option value='-'>เลือกรุ่นรถยนต์</option>");
	$("#vehiclekey").html("<option value="-">เลือกรุ่นย่อย (จำนวนประตู) (ราคาซื้อ)</option>");
}
 
function GetUsage(CARMODEL){
	var vehiclekey = $("#select_insurance_02").val();
	$.ajax({
			type: "POST", 
			url: "/sql/new_mysql-car.php", 
			data: "status=inputcarusage&page=selected&CARMODEL="+CARMODEL+"&vehiclekey="+vehiclekey, 
			success: function(msg)
			{ 
				//alert(msg);
				if(msg)
				{
					$("#CARUSAGE").val(msg)
				}
			}
		});	
 
}
function CoverNextYear(statusYear,M){
    var MonthName = ["มกราคม","กุมภาพันธ์","มีนาคม","เมษายน","พฤษภาคม","มิถุนายน","กรกฎาคม","สิงหาคม","กันยายน ","ตุลาคม","พฤศจิกายน","ธันวาคม"];
	var caryear = $("#categories_insurance_year").val();
	var carbrandid=$("#categories_insurance_brand").val();
	var CARMODEL=$("#categories_insurance_age").val();
	var strM ="<option value=''>เลือกเดือน</option>";
	if(statusYear=='C'){
				for(var x=0;x<12;x++){
					var k=1;
					var k=k+x;
					strM+="<option value='"+k+"'>"+MonthName[x]+"</option>";
			}
	}else{
			for(var x=M-1;x<12;x++){
				var k=1;
				var k=k+x;
				strM+="<option value='"+k+"'>"+MonthName[x]+"</option>";
			}
	}
	$("#select_insurance_05").html(strM);

	getcarprice(carbrandid,CARMODEL,caryear);
	getcarpriceDD(carbrandid,CARMODEL,caryear);
}
 
 
$(function(){

	var carmodel_loadsave=$("#carmodel_loadsave").val();
	var carbrandid=$("#categories_insurance_brand").val();
	var CARYEAR=$("#categories_insurance_year").val();

	if(carmodel_loadsave && carbrandid && CARYEAR){
		CarModel(carbrandid);
		getsubmodel(carbrandid,carmodel_loadsave,CARYEAR,1);
		//getCC(carbrandid,carmodel_loadsave,CARYEAR,1);
		GetUsage(carmodel_loadsave);
	 
		setTimeout(function(){ getcarprice(carbrandid,carmodel_loadsave,CARYEAR); }, 500);
	}

	$("#categories_insurance_year").change(function(){
		var caryear = $(this).val();
		var carbrandid=$("#categories_insurance_brand").val();
		var CARMODEL=$("#categories_insurance_age").val();
		$("#carmodel_loadsave").val("");
		$("#cc_loadsave").val("");
		if(carbrandid!="-" && caryear!="-"){
			CarModel(carbrandid);
		}else{
			$("#categories_insurance_age").html("<option value='-'>เลือกรุ่นรถยนต์</option>");
			$("#select_insurance_02").html("<option value='-'>เลือกรุ่นย่อย (จำนวนประตู) (ราคาซื้อ)</option>");
		}
		/*if((carbrandid!="-") && (CARMODEL!="-") && (caryear!="-")){
			getcarprice(carbrandid,CARMODEL,caryear);
			getsubmodel(carbrandid,CARMODEL,CARYEAR,1);
			//getCC(carbrandid,CARMODEL,caryear,1);
			GetUsage(CARMODEL);
		}*/
	});

	$("#categories_insurance_brand").change(function(){ 
		var caryear = $("#categories_insurance_year").val();
		var	carbrandid=$(this).val();
		//var carbrand_txt=$( "#categories_insurance_brand option:selected" ).text();
		$("#carmodel_loadsave").val(""); 
		$("#select_insurance_02").val(""); 
		if(carbrandid!='-' && caryear!="-"){
			CarModel(carbrandid);
		}else{
			$("#categories_insurance_age").html("<option value='-'>เลือกรุ่นรถยนต์</option>");
			$("#select_insurance_02").html("<option value='-'>เลือกรุ่นย่อย (จำนวนประตู) (ราคาซื้อ)</option>");
		}
		//$("select#categories_insurance_age").msDropdown().data("dd").refresh();
	});

	$("#categories_insurance_age").change(function(){
		//alert('ok');
		var carbrandid=$("#categories_insurance_brand").val();
		var CARMODEL_TXT=$( "#categories_insurance_age option:selected" ).text();
		var CARYEAR=$("#categories_insurance_year").val();
		$("#carmodel_loadsave").val("");
		$("#select_insurance_02").val("");
		var	CARMODEL =$(this).val();
		var VEHICLEKEY="";
		//alert(CARMODEL);
		if(CARMODEL!="-" && carbrandid!="-" && CARYEAR!="-" ){
			GetUsage(CARMODEL);
			getsubmodel(carbrandid,CARMODEL,CARYEAR,1);
			//getCC(carbrandid,CARMODEL,CARYEAR,2);
			setTimeout(function(){ getcarprice(carbrandid,CARMODEL,CARYEAR); }, 500);
		}
		else $("#select_insurance_02").html("<option value='-'>เลือกรุ่นย่อย (จำนวนประตู) (ราคาซื้อ)</option>");
	});
		
	$("#select_insurance_02").change(function(){
		var carbrandid=$("#categories_insurance_brand").val();
		var CARMODEL=$("#categories_insurance_age").val();
		var caryear = $("#categories_insurance_year").val();
		getcarprice(carbrandid,CARMODEL,caryear);
		GetUsage(CARMODEL);
		cc();
	});
 
});