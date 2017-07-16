function CarModel2(carbrandid){
	var carmodel_loadsave=$("#carmodel_loadsave").val();
	var caryear = $("#description_1").val();
	$.ajax({
		type: "POST", 
		url: "/sql/new_mysql-car.php", 
		dataType: 'json',
		data: "status=model&page=selected&time="+new Date().getTime()+"&carbrandid="+carbrandid+"&CARYEAR="+caryear, 
		success: function(msg)
		{ 
			if(msg!=null){
				if(msg==1){
					if(carbrandid==""){
						$("#description_3").html("<option value='-'>เลือกรุ่นรถยนต์</option>");
					}
					else {
						$("#description_3").html("<option value='notfound'>ไม่พบรุ่นรถยนต์</option>");
						$("#select_insurance_02").html("<option value='notfound'>ไม่พบรุ่นย่อย</option>");
						$("#information_2").html("<option value='notfound'>ไม่พบCC</option>");
					}
					$("#CoverMin").val("");
					$("#CoverMax").val("");
					return false;
				}
				//$("#CARMODEL").html('');
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
				$("#description_3").html(html);
				$("#select_insurance_02").html("<option value='-'>เลือกรุ่นย่อย (จำนวนประตู) (ราคาซื้อ)</option>");
				$("#information_2").html("<option value=''>เลือก CC รถยนต์</option>");
			}
		} 
	});
}
 
function getsubmodel(carbrandid,CARMODEL,caryear,type){
	if(carbrandid && CARMODEL && caryear){
	   	var CC_LOAD=$("#CC_LOAD").val();
	   	var VEHICLEKEY_LOAD=$("#VEHICLEKEY_LOAD").val();
	   	var engine_onload="";
	   	if(type==2){
			VEHICLEKEY_LOAD="";
	   	}
	   	if($("#information_2").val()){
		     engine_onload=$("#information_2").val();
		}
		$.ajax({
			type: "POST", 
			url: "/sql/new_mysql-car.php", 
			data: "status=submodel&page=selected&Makecode="+carbrandid+"&CARMODEL="+CARMODEL+"&CarYear="+caryear+"&VEHICLEKEY_LOAD="+VEHICLEKEY_LOAD+"&type="+type+"&engine_onload="+engine_onload+"&CC_LOAD="+CC_LOAD, 
			success: function(msg)
			{ 
				/*alert(msg);
				if(msg==""){
					alert('in');
					if(carbrandid==""||CARMODEL=='-')msg="<option value='-'>กรุณาเลือกรุ่นย่อย</option>";
					else msg="<option value='notfound'>ไม่พบรุ่นย่อย</option>";
				}*/
				$("#select_insurance_02").html(msg);
			}
		});	
	}
}
function getusage(carbrandid,CARMODEL){
	var vehiclekey = $("#select_insurance_02").val();
	if(carbrandid && CARMODEL){
		setTimeout(function(){
			var CARMODEL=$("#description_3" ).val();
			var CARUSAGE_LOAD="";
			if(!car_admin){
				 CARUSAGE_LOAD=$("#CARUSAGE_LOAD").val(); // แก้ไข แสดง display
			}
			//alert(CARUSAGE_LOAD);
			$.ajax({
				type: "POST", 
				url: "/sql/new_mysql-car.php", 
				data: "status=getusage&page=selected&Makecode="+carbrandid+"&CARMODEL="+CARMODEL+"&CARUSAGE_LOAD="+CARUSAGE_LOAD+"&vehiclekey="+vehiclekey, 
				success: function(msg)
				{ 
					$("#information_4").html(msg);
				}
			});	
		}, 150);
	}
}
function getcarpriceDD(carbrand,carmodel,caryear,VEHICLEKEY){ //1
   	var Carprice="";
   	var engine =$('#description_4').val();
   	var engine_infomation="";
   	var stageCover="";
   	var CurentPrice=$("#Current").val();
   	var condition_cc=$("#condition_cc").val();
   	var click_cc_condition=$("#click_cc_condition").val();
   	var cc_engine="";
  	var NextYear=$('input[name="optionsRadios2"]:checked').val();
   	if(NextYear==undefined){
	   NextYear="N";
   	}
   	if (typeof VEHICLEKEY == "undefined") {
			 VEHICLEKEY="";
   	}
	$.ajax({
		type: "POST", 
		url: "/sql/carprice.php", 
		data: "status=carprice&page=selected&Makecode="+carbrand+"&carmodel="+carmodel+"&caryear="+caryear+"&engine="+engine+"&VEHICLEKEY="+VEHICLEKEY+"&stageCover="+stageCover+"&CurentPrice="+CurentPrice+"&condition_cc="+condition_cc+"&NextYear="+NextYear, 
		success: function(msg)
		{ 
			if(msg)
			{
				if(stageCover=="A"){
					Carprice=msg.split("|");
					$("#CoverFixed80").val(Carprice[0]);
					$("#CoverMin").val(Carprice[0]);
					$("#CoverMax").val(Carprice[1]);
				}else{

					$("#information_6").html(msg);

					if(CurentPrice==""){
						$("#information_6").val('');
					}
				}
			}
		}
	});	
}
function getcarprice(carbrand,carmodel,caryear,VEHICLEKEY){ //1
		   var Carprice="";
		   var engine =$('#description_4').val();
		   var engine_infomation="";
		   var stageCover="";
		   var CurentPrice=$("#Current").val();
		   var condition_cc=$("#condition_cc").val();
		   var click_cc_condition=$("#click_cc_condition").val();
		   var cc_engine="";
		   var NextYear=$('input[name="optionsRadios2"]:checked').val();
		   if(NextYear==undefined){
			   NextYear="N";
		   }	
		   if (typeof VEHICLEKEY == "undefined") {
   				 VEHICLEKEY="";
		   }
		$.ajax({
			type: "POST", 
			url: "/sql/carprice.php", 
			data: "status=carprice&page=selected&Makecode="+carbrand+"&carmodel="+carmodel+"&caryear="+caryear+"&engine="+engine+"&VEHICLEKEY="+VEHICLEKEY+"&stageCover=A&CurentPrice="+CurentPrice+"&condition_cc="+condition_cc+"&NextYear="+NextYear, 
			success: function(msg)
			{ 
				if(msg)
				{
					Carprice=msg.split("|");
					$("#CoverMin").val(Carprice[0]);
					$("#CoverMax").val(Carprice[1]);
				}
			}
		});	
}
function Submit_ssion(id,status){
	$("#PRODUCTID").val(id);
	$("#PRODUCTTYPE").val("MT");
	$("#COVER").val(status);
	if(status=='C'){
		$("#AMOUNT").val($("#payment"+id).data('p'));
		$("#AMOUNTNET").val($("#payment"+id).data('pv'));
		$("#COVER").val($("#payment"+id).data('c'));
		$("#VAT").val($("#payment"+id).data('vat'));
		$("#TAX").val($("#payment"+id).data('tax'));
		$("#MX_AGEDISCOUNT").val(base64_decode($("#payment"+id).data('age')));
		document.cookie="request_price=active"; // boss 23/11/2015 เชค ขอราคา
	}
	if(status=='A'){
		$("#AMOUNT").val(Age_price_amount);
		$("#AMOUNTNET").val(Age_price_vat);
		$("#COVER").val($("#payment"+id).data('c'));
		$("#VAT").val(Age_vat);
		$("#TAX").val(Age_tax);
		$("#MX_AGEDISCOUNT").val(base64_decode(Age));
		document.cookie="request_price=active"; // boss 23/11/2015 เชค ขอราคา
	}
	if(id==""){
		$("#insurelevel_quotation").val($("#categories").val());
		$("#CoverMin_quotation").val($("#CoverMin").val());
		$("#CoverMax_quotation").val($("#CoverMax").val());
		$("#CoverFixed80_quotation").val($("#CoverFixed80").val());
		$("#carusage_quotation").val($("#information_4").val());
	}
 
	$.isLoading({ text: "กรุณารอสักครู่...." });
	$("#parse_value").submit();
}
 
function GetCCDrowdown(carbrandid,CARMODEL,caryear,stage){
	var CC_LOAD=$("#CC_LOAD").val();
	var description_4=$("#description_4").val();
	var Fixed_CC=$("#Fixed_CC").val();
	var condition_cc=$("#condition_cc").val();
	var vehiclekey=$("#select_insurance_02").val();
	$.ajax({
			type: "POST", 
			url: "/sql/FilterSubmodel_dropdrow.php", 
			data: "status=submodel&page=selected&Makecode="+carbrandid+"&CARMODEL="+CARMODEL+"&CarYear="+caryear+"&CC_LOAD="+CC_LOAD+"&s=1&vehiclekey="+vehiclekey, 
			async:false,
			success: function(msg)
			{ 
				obj_msg=msg.split('|');
				$("#information_2").html(obj_msg[0]);
			}
		});	
}
 
function MinItem(stage){
 
	var categories=$("#categories").val();
	var numProduct=0;
	var not_online=0;
	var Currentcountproduct=0;
	var hot_id=$("#hot_id").val();
	var hot_value=$("#hot_value").val();
 
	if(stage==""){
			return false;
	}
	var ev=stage.split("|");
	var arr="";
	var str_text="";
 
 
	if(ev[0]=="promotion"){
		fn_array=jArraySortbyPromotion;
	}
 
 
	if(ev[0]=="company"){
		fn_array=jArraySortby;
	}
	if(ev[0]=="pricemin"){
		fn_array=jArrayPrice;
 
 
	}
	if(ev[0]=="covermin"){
		fn_array=jArrayCover;
	}
	if(ev[0]=="garagemin"){
		fn_array=jArrayGarage;
	}
 
	_.each(fn_array, function(item,index){item.name = parseFloat(item.name); });
	if(ev[1]=='min'){
		arr=_.sortBy(fn_array, 'name');
		//console.log((_.min(fn_array, 'name')));
	}else{
		arr=_.sortBy(fn_array, 'name').reverse();
		//console.log((_.max(fn_array, 'name')));
	}
 
 
 
	var item_fixed_age="";
	for(var i=0;i<_.size(arr);i++){
		var id_price=arr[i]['id'];
 		
		var getHTML =$("#searh_"+arr[i]['id']).html();		
			if(arr[i]['id']==hot_id){
				if(Promotion!="SALARYMAN"){
					 str_text+="<div id=searh_"+id_price+" class='searh-sort fixed_age' >"+getHTML+"</div>";
				}else{
					str_text+="<div id=searh_"+id_price+" class='searh-sort' >"+getHTML+"</div>";
				}
			}else{
				str_text+="<div id=searh_"+id_price+" class='searh-sort' >"+getHTML+"</div>";
			}
 
		}
 
	 $(".item").not('.pagesearch').hide();
	  $("#sort_package").html(str_text);
	  $(".search").show();
 
	  if(hot_id && Promotion!="SALARYMAN"){
 
		  $(".hotprice_"+hot_id).addClass('badge').html("");
			  if($(".hotprice_"+hot_id).addClass('badge').text().length>15){
				   $(".hotprice_"+hot_id).addClass('badge').html($(".hotprice_"+hot_id).addClass('badge').text()+"[ Hot Price! ลดสูงสุด <b>-50%</b> <u style='cursor:pointer;' onclick='learn_ui();'>คลิก</u> ]");
			  }else{
				  $(".hotprice_"+hot_id).addClass('badge').html("Hot Price! ลดสูงสุด <b>-50%</b> <u style='cursor:pointer;' onclick='learn_ui();'>คลิก</u> ");  
			  }
		 $('.fixed_age > #addclasscookie'+hot_id).addClass('promo promo-motorforlady');
		 $(".hotname_"+hot_id+", .hot_amout_"+hot_id).css("color", "#F62A2A !important");
		 $(".hotprice_"+hot_id).css("background-color", "#F62A2A !important");
		 $(".hotname_"+hot_id+" > .b").html('สินค้าราคาพิเศษ ชั้น 1');
		 $(".hot_amout_"+hot_id).html($("#hot_value").val());
		 $("#imgLocation"+hot_id+" > .discount_age").attr("src", "/img/lowest-price.png");
		 $("#imgLocation"+hot_id+"").attr("href", "#").attr('onclick','learn_ui()');
		 $("#payment"+hot_id).attr('onclick',"Submit_ssion('"+hot_id+"','A')");
		 $("#detail"+hot_id).attr('onclick',"detail('"+hot_id+"','A')");
		 $("#compare"+hot_id).attr('data-price',Age_price_amount);	
		 //$("#compare"+hot_id).data('age',Age_compare);
 
		 $("#compare"+hot_id).attr('data-age',Age_compare);
		 $("#compare"+hot_id).attr('data-price-n',Age_price_vat);
 
		 	//alert(Age_price_vat)
	  }
 
 
	if(categories==1 || categories==""){
		$(".insure1").length;
		$(".insure9").length;
 
		numProduct =parseInt($(".insure1").length)+parseInt($(".insure9").length);
		Currentcountproduct=numProduct;
 
	}else{
		not_online=$(".insure"+categories+".notonline").length
		numProduct=$(".insure"+categories).length;
		Currentcountproduct=parseInt(numProduct)-parseInt(not_online);
 
	}
 
	if(Promotion=="SALARYMAN" && categories==""){
		Currentcountproduct=Currentcountproduct+parseInt($(".insure20").length);
		numProduct=Currentcountproduct;
	}
 
	if(numProduct==0){
		$(".none_product").show();		
	}
 
 
	$("#count_product").html(Currentcountproduct);
 
}
 
 
 
function LoadPackage(){
	var listid=$("#list_detail").val();
	var str="";
	var className="";
	var categories=$("#categories").val();
	var name_url=categories.replace("0","plus");
	$("#link_search").attr("href", "/car_insurance/type"+name_url)
	if(name_url==""){
			$("#link_search").attr("href", "/car_insurance/all")
	}
	if($("#hot_id").val()){
		$("#addclasscookie"+$("#hot_id").val()).attr('data-range', base64_decode(Age_price_amount));
	}
 
	var numProduct=0;
	if(listid){
		str=listid.split(",");	
		$("#list_count").html(str.length)
		for(var x=0;x<str.length;x++){
 		//alert('change');
	   	$("#compare"+str[x]).addClass("item-active");
		$("#addclasscookie"+str[x]).addClass("item-active");
 
		}
	}
 
	$(".item").not('.search').hide();
 
	if(categories==1 || categories==""){
		$(".insure1").show();
		$(".insure9").show();
		$(".insure1").length;
		$(".insure9").length;
		numProduct =parseInt($(".insure1").length)+parseInt($(".insure9").length);
	}else{
		$(".insure"+categories).show();
		not_online=$(".insure"+categories+".notonline").length
		numProduct=$(".insure"+categories).length;
		numProduct=parseInt(numProduct)-parseInt(not_online);
 
	}
	if(Promotion=="SALARYMAN" && categories==""){
 
		$(".insure20").show();
		numProduct=numProduct+parseInt($(".insure20").length);
 
	}
 
	if(numProduct==0){
		$(".none_product").show();		
	}
 
	$("#count_product").html(numProduct);// นับจำนวนสินค้า
 
 
}
 
 
function ShowPricebar(insure){
			var min_search = $('.ui-slider-handle:nth-child(2) > .ui-slider-tip').html();
			var max_search = $('.ui-slider-handle:nth-child(3) > .ui-slider-tip').html();
			var search_id ="";
 
			var numPricebar=0;
			$('.searh-sort').each(function(){ // turbo 
				var search_id=parseFloat($("#addclasscookie"+$(this).attr('id').substr(6)).data('range'));
				if(search_id>=min_search && search_id<=max_search){
					$(this).show();
 
				}else{
					$(this).hide();
				}
			});
			if(insure==1){
				numPricebar = parseInt($(".item.insure1:visible").length)+(parseInt($(".item.insure9:visible").length));
			}else{
				numPricebar = $(".item.insure"+insure+":visible").length;
			}
			if(Promotion=="SALARYMAN" && insure==""){
 
			}else{
					$("#count_product").html(numPricebar);
					if(numPricebar==0){
						$(".none_product").show();		
					}else{
						$(".none_product").hide();		
					}
			}	
 
 
 
}
 
function compare_product(id){
	var stepCheck="";
	var c_package="";
	var c_package_checkR1 = $(".compare.item-active").map(function() {
		return base64_decode($(this).data("id"));
	}).get();	
	if( $('#compare'+id).hasClass('item-active') ){

		$("#addclasscookie"+id).removeClass('item-active');
		$('#compare'+id+' ,.nlike').addClass('as')

		$('#compare'+id).removeClass('item-active');
		//alert('del');
		stepCheck=c_package;
	} else {
		if(c_package_checkR1.length>=3){
			$('#compare_all').show();
			alert_box('เปรียบเทียบสินค้าได้ไม่เกิน 3 แพ็คเกจ');
			return false;	
		}
		stepCheck=c_package_checkR1;
		//alert('add');
		$('#compare'+id).addClass('item-active');
		$("#addclasscookie"+id).addClass('item-active');
	}
 
	var c_package = $(".compare.item-active").map(function() {
   			 return base64_decode($(this).data("id"));
	}).get();
		$("#list_count").html(c_package.length)
	setTimeout(function(){  
	var LISTID = $(".compare.item-active").map(function() {
   			 return base64_decode($(this).data("id"));
	}).get(); 
 
	if(stepCheck.length>=3){
		$('#compare_all').show();
 		alert_box('เปรียบเทียบสินค้าได้ไม่เกิน 3 แพ็คเกจ');
		$("#list_count").html(3);
		return false;	
	}
	if( $('#compare'+id).hasClass('item-active') ){
		if(stepCheck.length>=1){
			$('#compare_all').show();
 			alert_box('เปรียบเทียบสินค้า ที่เลือก');
		}
	}
	$.ajax({
			type: "POST", 
			url: "/sql/read_cookie_compare.php", 
			data: "LISTID="+LISTID+"&SETCOMPARE=1", 
			success: function(msg)
			{ 		
			  //doo same ting
			}
	});	
	  }, 500);	
}

 
function base64_decode(data) {
  var b64 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';
  var o1, o2, o3, h1, h2, h3, h4, bits, i = 0,
    ac = 0,
    dec = '',
    tmp_arr = [];
 
  if (!data) {
    return data;
  }
 
  data += '';
 
  do { // unpack four hexets into three octets using index points in b64
    h1 = b64.indexOf(data.charAt(i++));
    h2 = b64.indexOf(data.charAt(i++));
    h3 = b64.indexOf(data.charAt(i++));
    h4 = b64.indexOf(data.charAt(i++));
 
    bits = h1 << 18 | h2 << 12 | h3 << 6 | h4;
 
    o1 = bits >> 16 & 0xff;
    o2 = bits >> 8 & 0xff;
    o3 = bits & 0xff;
 
    if (h3 == 64) {
      tmp_arr[ac++] = String.fromCharCode(o1);
    } else if (h4 == 64) {
      tmp_arr[ac++] = String.fromCharCode(o1, o2);
    } else {
      tmp_arr[ac++] = String.fromCharCode(o1, o2, o3);
    }
  } while (i < data.length);
 
  dec = tmp_arr.join('');
 
  return dec.replace(/\0+$/, '');
}
 
function compare_page(){
	var dataListID = $(".compare.item-active").map(function() {
   			 return base64_decode($(this).data("id"));
	}).get();
	var dataListPrice = $(".compare.item-active").map(function() {
   			 return base64_decode($(this).data("price"));
	}).get();
	var dataListPriceSutti = $(".compare.item-active").map(function() {
   			 return base64_decode($(this).data("price-n"));
	}).get();
 
	var dataCover = $(".compare.item-active").map(function() {
   			return base64_decode($(this).data("price-cover"));
	}).get();
 
	var dataAge = $(".compare.item-active").map(function() {
   			return base64_decode($(this).data("age"));
	}).get();
	dataListPrice=dataListPriceSutti;
		if($(".compare.item-active").length==0){
			$('#compare_all').show();
 			alert_box('กรุณาเลือกสินค้าที่ต้องการเปรียบเทียบ');
			return false;
		}
		if($(".compare.item-active").length >3){
			$('#compare_all').show();
 			alert_box('ท่านสามารถเปรียบเทียบสินค้าได้ไม่เกิน 3 แพคเกจ');
			return false;
		}
		var arrProduct=GetValueCar();
		var categories_stat=$("#categories").val();
		$.ajax({
			type: "POST", 
			url: "/sql/save_stat_search.php", 
			data: "categories_insurance_year="+arrProduct[0]+"&categories_insurance_brand="+arrProduct[1]+"&categories_insurance_age="+arrProduct[2]+"&categories_insurance_cc="+arrProduct[3]+"&VEHICLEKEY="+arrProduct[5]+"&driverAge="+arrProduct[6]+"&CARUSAGE="+arrProduct[7]+"&page=compare&categories_insurance="+categories_stat, 
			success: function(msg)
			{
			}	 	
		});	
		$.ajax({
			type: "POST", 
			url: "/session.php", 
			cache: false,
			data: "PRODUCTTYPE=COMPARE&dataListID="+dataListID+"&comparePrice="+dataListPrice+"&caryear="+arrProduct[0]+"&carbrand="+arrProduct[1]+"&carmodel="+arrProduct[2]+"&CC="+arrProduct[3]+"&VEHICLEKEY="+arrProduct[5]+"&DRIVER_AGE="+arrProduct[6]+"&CARUSAGE="+arrProduct[7]+"&dataCover="+dataCover+"&comparePriceSutti="+dataListPriceSutti+"&MX_AGEDISCOUNT="+dataAge, 
			success: function(msg)
			{ 		
					window.open("/car_insurance/compare","_parent");
			}
		});	
}
 
function isBase64(str) {
    try {
        return btoa(atob(str)) == str;
    } catch (err) {
        return false;
    }
}
 
function detail(id,status){
		var AMOUNT	   ="";
		var AMOUNTNET  ="";
		var COVER	   ="";	
		var MX_AGEDISCOUNT ="";	
	if(status=='C'){
		 AMOUNT	   =$("#payment"+id).data('p');
		 AMOUNTNET  =$("#payment"+id).data('pv');
		 COVER	   =$("#payment"+id).data('c');
		 MX_AGEDISCOUNT=base64_decode($("#payment"+id).data('age'));
		 AMOUNT=AMOUNTNET;
 
	}
	if(status=='A'){
		 AMOUNT	   =Age_price_amount;
		 AMOUNTNET  =Age_price_vat;
		 COVER	   =$("#payment"+id).data('c');
		 MX_AGEDISCOUNT=base64_decode(Age);
		 VAT =Age_vat;
		 TAX = Age_tax;
	}
	var arrProduct=GetValueCar();
	//alert(arrProduct);
	$.ajax({
			type: "POST", 
			url: "/session.php", 
			data: "PRODUCTTYPE=MT&AMOUNT="+AMOUNT+"&AMOUNTNET="+AMOUNTNET+"&caryear="+arrProduct[0]+"&carbrand="+arrProduct[1]+"&carmodel="+arrProduct[2]+"&CC="+arrProduct[3]+"&VEHICLEKEY="+arrProduct[5]+"&DRIVER_AGE="+arrProduct[6]+"&CARUSAGE="+arrProduct[7]+"&COVER="+COVER+"&PRODUCTID="+id+"&MX_AGEDISCOUNT="+MX_AGEDISCOUNT+"&VAT="+VAT+"&TAX="+TAX, 
			success: function(msg)
			{
				//alert(msg);
				//alert('ok'); 		
				window.open("/car_insurance/detail","_parent");
			}
	});	
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
function check_stat_btn(status){
	$("#Dropinfo_status").val(status);
	$.ajax({
			type: "POST", 
			url: "/sql/save_stat_search.php", 
			data: "page="+status, 
			success: function(msg)
			{ 		
			}
	});	
}
function GetValueCar(){
		var caryear=$("#description_1").val();
		var carbrand=$("#description_2").val();
		var carmodel=$("#description_3").val();
		var carCC_Onload=$("#description_4").val();
		var vehiclekey=$("#select_insurance_02").val();
		submodel = vehiclekey.split(',');
		vehiclekey = submodel[0];
		var carCC_Fixed=$("#information_2").val();
		var DriverAge=$("#information_3").val();
		var carUsage=$("#information_4").val();
		var cars = new Array(caryear, carbrand, carmodel,carCC_Onload,carCC_Fixed,vehiclekey,DriverAge,carUsage);
		return	cars;
}
 
function ClearCar(){
	  $("#description_4").html("<option value=''>เลือก CC รถยนต์</option>");
	  $("#select_insurance_02").html("<option value='-'>เลือกรุ่นย่อย (จำนวนประตู) (ราคาซื้อ)</option>");
	  $("#information_6").html("<option value=''>ระบุทุนประกัน</option>");
	  $("#condition_cc").val("");
}
 
function isValidEmailAddress2(emailAddress) {
    var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
    return pattern.test(emailAddress);
};
 
function CloseDropinfo(){
	var txt="";
	if($("#LEADNAME").val()==""){
		txt=1;
	}
	if($("#LEADSURNAME").val()==""){
		txt=1;
	}
 
	if($("#EMAIL").val()==""){
		txt=1;
	}
	if($("#EMAIL").val()!="" && !(isValidEmailAddress2($("#EMAIL").val()))){
		txt=1;
	}
 
	if($("#PHONEMOBILE").val()){
		var first_digit = $("#PHONEMOBILE").val().substr(0,1);
		var begin2digit = $("#PHONEMOBILE").val().substr(0,2);
		if(first_digit != "0"){
			txt=1;
		}
		if(begin2digit == "08" || begin2digit == "06" || begin2digit == "09"){
			if($("#PHONEMOBILE").val().length != 10){
				txt=1;
			}
		}
		if(begin2digit != "08" && begin2digit != "06" && begin2digit != "09"){
			if($("#PHONEMOBILE").val().length < 9){
				txt=1;
			}
		}
	}
 
	if(txt==""){
		var data = $("#form_profile").serialize();
		 $.ajax({
		  url: '/sql/keep_session_pass_product.php',
		  type: "POST",
		  data: data,
		  success: function(data) {
		   // INSERT MEMBERID
						  //	window.open("detail.php","_parent");
			  }
		 });
	}
}
function ask_price(type) {
	if(type=='close') {
		$.magnificPopup.close();
		return false;	
	} 
	if(type=='ui') {
		var txt=$("#description_age").html();
		setTimeout(function(){ 
			//$("#information_3").msDropdown().data("dd").destroy();
			//$("#information_3").msDropDown({mainCSS:'dd_information'});
			$("#information_3_msdd").css("border" ,"3px solid #F62A2A");
		 }, 1000);	
		$.magnificPopup.open({
	  	items: {
	    	src: '<div class="white-popup Box_Car1" style="max-width:450px;">'+txt+'<br/><br/><a class="btnCar" onclick=\'$("#information_3_msdd").css("border" ,"3px solid #F62A2A");$.magnificPopup.close();\' >คลิก เปลี่ยนเงื่อนไข</a></div></div></div></div>'
	 	},
	  	type: 'inline',
	});
 
		return false;	
	} 
	// for page load
	$.magnificPopup.open({
	  	items: {
	    	src: '#lightbox-askprice'
	 	},
	  	type: 'inline',
	});
}
 
function isValidEmailAddress2(emailAddress) {
    var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
    return pattern.test(emailAddress);
};
 
function Facebook_Refuntion(url){
	var	PHONEMOBILE=$("#PHONEMOBILE").val();
	var	EMAIL=$("#EMAIL").val();
	var LEADNAME=$("#LEADNAME").val();
	var LEADSURNAME=$("#LEADSURNAME").val();
	var first_digit_fb = $("#PHONEMOBILE").val().substr(0,1);
	var begin2digit_fb = $("#PHONEMOBILE").val().substr(0,2);
	if(PHONEMOBILE){
		var pass_phone_fb="";
		  if(first_digit_fb != "0"){
			  	//$('#popup_on_popup , #arr1').show();
				//$("#arr1").html("เบอร์โทรศัพท์ต้องขึ้นต้นด้วย 0<br/><a class='btnCar' style='margin-top: 30px;' onclick=\"$('#popup_on_popup , #arr1').hide();\">ปิด</a>");	
				alert_box("เบอร์โทรศัพท์ต้องขึ้นต้นด้วย 0",'PHONEMOBILE'); 
				  //$("#PHONEMOBILE").focus();
 
		  }else if(begin2digit_fb == "08" || begin2digit_fb == "06" || begin2digit_fb == "09"){
				  if($("#PHONEMOBILE").val().length != 10){
			  			//$('#popup_on_popup , #arr1').show();
						//$("#arr1").html("กรุณากรอกเบอร์โทรศัพท์มือถือให้ครบ 10 หลัก<br/><a class='btnCar' style='margin-top: 30px;' onclick=\"$('#popup_on_popup , #arr1').hide();\">ปิด</a>");	
						alert_box("กรุณากรอกเบอร์โทรศัพท์มือถือให้ครบ 10 หลัก",'PHONEMOBILE');   
						  pass_phone_fb=0;
				  }else{
						  pass_phone_fb=1;
				  }
 
		  }else if(begin2digit_fb != "08" && begin2digit_fb != "06" && begin2digit_fb != "09"){
					  if($("#PHONEMOBILE").val().length < 9){
			  			//$('#popup_on_popup , #arr1').show();
						//$("#arr1").html("กรุณากรอกเบอร์โทรศัพท์ให้ครบ 9 หรือ 10 หลัก<br/><a class='btnCar' style='margin-top: 30px;' onclick=\"$('#popup_on_popup , #arr1').hide();\">ปิด</a>");	
						alert_box("กรุณากรอกเบอร์โทรศัพท์ให้ครบ 9 หรือ 10 หลัก",'PHONEMOBILE');	  
							  pass_phone_fb=0;
					  }else{
							  pass_phone_fb=1;
		  }
	  }
	}
 
	if(pass_phone_fb==0){
		return false;	
	}
 
	if(EMAIL==""){
		 //$('#popup_on_popup , #arr1').show();
		 //$("#arr1").html("กรุณากรอกอีเมล<br/><a class='btnCar' style='margin-top: 30px;' onclick=\"$('#popup_on_popup , #arr1').hide();\">ปิด</a>");
 		alert_box("กรุณากรอกอีเมล",'EMAIL');
		return false;	
	}
	if(!isValidEmailAddress2(EMAIL)){
		 //$('#popup_on_popup , #arr1').show();
		 //$("#arr1").html("รูปแบบอีเมลไม่ถูกต้อง กรุณากรอกใหม่อีกครั้ง<br/><a class='btnCar' style='margin-top: 30px;' onclick=\"$('#popup_on_popup , #arr1').hide();\">ปิด</a>");
		alert_box("รูปแบบอีเมลไม่ถูกต้อง กรุณากรอกใหม่อีกครั้ง",'EMAIL');
		return false;	
	}
	var FB="FACEBOOK_SEARCH";
	var LeadCookie="COOKIE_LEAD";
	setCookie('cPHONEMOBILE',PHONEMOBILE,1);
	setCookie('cEMAIL',EMAIL,1);
	setCookie('cLEADNAME',LEADNAME,1);
	setCookie('cLEADSURNAME',LEADSURNAME,1);
	setCookie("PAGE_FACEBOOK",  FB,30);
	setCookie("STEP_LEAD_COOKIE",LeadCookie,30);
	window.open(url,'_self');
}
function setCookie(cname,cvalue,exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires=" + d.toGMTString();
    document.cookie = cname+"="+cvalue+"; "+expires;
}
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) == 0) return c.substring(name.length,c.length);
    }
    return "";
}
 
function facebook_ws(){
	//var ws_call=$("#form_profile").serialize();
	var FB_COOKIE= getCookie('PAGE_FACEBOOK');
	var data_product = $("#form_profile").serialize();
	// CALL API
 
 
	 $.ajax({
			url: '/sql/keep_session_pass_product.php',
			type: "POST",
			data: data_product,
			success: function(data) {
			 // INSERT MEMBERID
							//	window.open("detail.php","_parent");
			}
	});
 
	$.ajax({
		  url: '/form1Insert.php',
		  type: "POST",
		  data: data_product,
		  success: function(data) {
		   // INSERT MEMBERID
 
		  }
	 });
 
}
/*******Bossss*******/
 
function learn_ui(){
	ask_price('ui');
	var age = $("#information_3").val();
	if(age>0){
		$("#information_3").val(parseInt(age));
		$("#valiable_age").html(parseInt(age)+" ปี");
 
	}else{
		$("#information_3").val(36);
		$("#valiable_age").html("36-50 ปี");
	}
 
	$("#page_search > .number_list > span").addClass("active");
 
	$('#page_search .box_left').fadeIn();
}
 
function save_page_premium(){
	var car=base64_decode(car_option);
 
	var html_page="<div id='sort_package'>"+$('#sort_package').html()+"</div> "+$('#searh_not').html();	
	html_page=encodeURIComponent(html_page);
 
		$.ajax({
			type: "POST", 
			url: "/sql/save_page_stdpremium.php", 
			data: "html_page="+html_page+"&car="+car, 
			success: function(msg)
			{ 
				if(car_admin){
					display_product_admin();
				}
			}
		});	
}
function check_key_th_eng(id,txt){ 
	var txt_check = "กขฃคฅฆงจฉชซฌญฎฏฐฑฒณดตถทธนบปผฝพฟภมยรฤลฦวศษสหฬอฮอะอัอาอำอิอีอึอือุอูเอแอโอใอไออๅอ่อ้อ๊อ๋อ็อ์ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	var txt_length = txt.length;
	var txt_validate = false;
	for(var i=0;i<txt_length;i++){
		if(txt_check.indexOf(txt[i])<0 ){
			txt = txt.substr(0, i)+txt.substr(i+1, txt_length);
			txt_validate = true;
		}
	}
	if(txt_validate == true){
		$("#"+id).val(txt);
	}
}

function check_key_lastname(id,txt){ 
	var txt_check = "กขฃคฅฆงจฉชซฌญฎฏฐฑฒณดตถทธนบปผฝพฟภมยรฤลฦวศษสหฬอฮอะอัอาอำอิอีอึอือุอูเอแอโอใอไออๅอ่อ้อ๊อ๋อ็อ์ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	var txt_space = " ";
	var txt_length = txt.length;
	var txt_validate = false;
	var txt_validate_space = 0;
	for(var i=0;i<txt_length;i++){
		if(txt_check.indexOf(txt[i])<0 ){ //&& ((i+1)!=txt_length)
			if(txt_space.indexOf(txt[i])<0 || i==0){
				txt = txt.substr(0, i)+txt.substr(i+1, txt_length);
				txt_validate = true;
			}else{
				if(txt_space.indexOf(txt[i])==0 && txt_validate_space>0){
					txt = txt.substr(0, i)+txt.substr(i+1, txt_length);
					txt_validate = true;
					txt_validate_space++;
				}else{
					txt_validate_space++;
				}
			}
		}
	}
	if(txt_validate == true){
		$("#"+id).val(txt);
	}
}

function isValidEmailAddress(emailAddress) {
	var pattern = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/igm;
	return pattern.test(emailAddress);
}
function check_mail_thai(txt) {
	var valid = "0123456789@-_.ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	var status= "true";
	var check = 0;
	for (var i=0; i<txt.length; i++) {
		if (valid.indexOf(txt[i]) == "-1"){
			status = "false";
		}
		if(txt[i]=='.'&&txt.length-i<3)status="false";
		if(check == 1 &&(txt[i]=='-'||txt[i]=='_'||txt[i]=='@'))status="false";
		if(txt[i] == '@')check = 1;
	}
	return status;
}
function check_num(num) {
	var valid = "0123456789"
	var status= "true";
	for (var i=0; i<num.length; i++) {
		if (valid.indexOf(num[i]) == "-1"){
			status = "false";
		}
	}
	return status;
}
function check_key_num(id,txt){
	var txt_check = "0123456789";
	var last_txt = txt[txt.length-1];
	if(txt_check.indexOf(last_txt)<0){
		$("#"+id).val(txt.substring(0, (txt.length-1)));
	}
}

function check_thai_eng(txt) {
	var valid = "ๅภถุูึคตจขชๆไำพะัีรนยบลฃฟหกดเ้่าสวงผปแอิืทมใฝฎฑธํ๊ณฯญฐฅฤฆฏโฌ็๋ษศซฉฮฺ์ฒฬฦABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz "
	var status= "true";
	for (var i=0; i<txt.length; i++) {
		if (valid.indexOf(txt[i]) == "-1"){
			status = "false";
		}
	}
	return status;
}
function check_key_email(id,txt){
	var txt_check = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-.@";
	var last_txt = txt[txt.length-1];
	if(txt_check.indexOf(last_txt)<0){
		$("#"+id).val(txt.substring(0, (txt.length-1)));
	}
} 
$(function(){
	LoadPackage();
	if(loadpackage_std==0){
		loadpackage_std="";
	}
	if(loadpackage_std==""){
		$.isLoading({ text: "กรุณารอสักครู่...." });
	}else{
		$.isLoading({ text: "กรุณารอสักครู่...." });
		setTimeout(function(){$.isLoading( "hide" );}, 1000);
 
	}
 	$('#compare_all').hide();
 	$(".ta-show-menu").click(function(){
 		if($("#small-menu").hasClass('active')){
 			$("#box-right").css("margin-top","1080px");
 		}
 		else{
 			$("#box-right").css("margin-top","0px");
 		}
 	});
 	
 	
	var submit_value=""; // submit value รอ value หลัง engine_onloadg
	var carmodel_loadsave=$("#carmodel_loadsave").val();
	var CARBRAND=$("#carbrand_loadsave").val();
	var VEHICLEKEY_LOAD=$("#VEHICLEKEY_LOAD").val();
	var CARYEAR=$("#caryear_loadsave").val();
 	var cc_engine=$("#Fixed_CC").val();
	if(loadpackage_std==""){
		setTimeout(function(){ if(Promotion=='LADY'){MinItem('promotion|min');}else{  MinItem('price|min');}}, 700);
	}
	$(".submit_search").css("cursor", "no-drop");		
	if(carmodel_loadsave && CARBRAND ){
		CarModel2(CARBRAND)
		if(CARYEAR){
			setTimeout(function(){
				getcarprice(CARBRAND,carmodel_loadsave,CARYEAR,VEHICLEKEY_LOAD);
			    getcarpriceDD(CARBRAND,carmodel_loadsave,CARYEAR,VEHICLEKEY_LOAD);
			    GetCCDrowdown(CARBRAND,carmodel_loadsave,CARYEAR,1);
			    getsubmodel(CARBRAND,carmodel_loadsave,CARYEAR,1);

			    setTimeout(function(){ 
					getusage(CARBRAND,carmodel_loadsave);
					  if(loadpackage_std==""){
					    $.isLoading( "hide" );
						setTimeout(function(){save_page_premium()}, 2500);
					  	}
				}, 1000);	

				setTimeout(function(){ 
					getcarprice(CARBRAND,carmodel_loadsave,CARYEAR,VEHICLEKEY_LOAD);
					getcarpriceDD(CARBRAND,carmodel_loadsave,CARYEAR,VEHICLEKEY_LOAD);
					$(".submit_search").css("cursor", "pointer");	
					submit_value=1;
			 	}, 900);
			}, 700);
		}
	}
 
	$("#description_1").change(function(){ //YEAR
		ClearCar();
		var Current=$("#Current").val("");
		$("#condition_cc").val("");
			var caryear = $(this).val();
		var carbrandid=$("#description_2").val();
		var CARMODEL=$("#description_3").val();
		var VEHICLEKEY=$("#select_insurance_02").val();
		$("#carmodel_loadsave").val("");
		getsubmodel(carbrandid,CARMODEL,caryear,1);
		CarModel2(carbrandid);
		if(carbrandid && CARMODEL && caryear){
			getcarprice(carbrandid,CARMODEL,caryear,VEHICLEKEY);
			getcarpriceDD(carbrandid,CARMODEL,caryear,VEHICLEKEY);
			//GetCCDrowdown(carbrandid,CARMODEL,caryear,1);
		}
	});
 
	$("#description_2").change(function(){//brand
		ClearCar();
		$("#condition_cc").val("");
		var Current=$("#Current").val("");
			var	carbrandid=$(this).val();
		var carbrand_txt=$( "#description_2 option:selected" ).text();
		getcarprice(CARBRAND,carmodel_loadsave,CARYEAR,VEHICLEKEY_LOAD);
		getcarpriceDD(CARBRAND,carmodel_loadsave,CARYEAR,VEHICLEKEY_LOAD);
		$("#carmodel_loadsave").val("")
		CarModel2(carbrandid);
		GetCCDrowdown(carbrandid,'',CARYEAR,2);
	});
 
	$("#description_3").change(function(){//model
		ClearCar();
		$("#condition_cc").val("");
		var Current=$("#Current").val("");
		var carbrandid=$("#description_2").val();
		var CARYEAR=$("#description_1").val();
		var	CARMODEL=$(this).val();
		var VEHICLEKEY="";
		if(CARMODEL && carbrandid && CARYEAR ){
			setTimeout(function(){
				getcarprice(carbrandid,CARMODEL,CARYEAR,VEHICLEKEY);
				getcarpriceDD(carbrandid,CARMODEL,CARYEAR,VEHICLEKEY);
				GetCCDrowdown(carbrandid,CARMODEL,CARYEAR,2);
				getsubmodel(carbrandid,CARMODEL,CARYEAR,1);	  // change car
			}, 500);
		}
		getusage(carbrandid,CARMODEL);
	});

	$("#select_insurance_02").change(function(){//submodel
		var carbrandid=$("#description_2").val();
		var CARMODEL=$("#description_3").val();
		var caryear = $("#description_1").val();
		var VEHICLEKEY=$(this).val();

		getusage(carbrandid,CARMODEL);
		getcarprice(carbrandid,CARMODEL,caryear,VEHICLEKEY);
		getcarpriceDD(carbrandid,CARMODEL,caryear,VEHICLEKEY);
	});
 
 
 
	$("#information_2").change(function(){//fixcc
		var carbrandid=$("#description_2").val();
		var CARMODEL=$("#description_3").val();
		var CARYEAR=$("#description_1").val();
		var VEHICLEKEY="";
		$("#condition_cc").val($(this).val());
		$("#click_cc_condition").val(1)
			$("#Current").val("");	
			$("#information_6").html("<option value=''>ระบุทุนประกัน</option>");

			getsubmodel(carbrandid,CARMODEL,CARYEAR,2);
			getcarprice(carbrandid,CARMODEL,CARYEAR,VEHICLEKEY);
			getcarpriceDD(carbrandid,CARMODEL,CARYEAR,VEHICLEKEY);
	});
 	$("#btNextStep,#btn_callback").click(function(e) {

		var STEP_PROMOTION_CHECK="";
		var PRODUCTPLAN="";
		if($("#PRODUCTPLAN").val()){
			var PRODUCTPLAN=$("#PRODUCTPLAN").val();
		}
		if($("#STEP_PROMOTION").val()){
			STEP_PROMOTION_CHECK=1;
		}
		//$("#form1").submit();
		var data = $("#form_profile").serialize();
		var name = $("#PURCHASE_NAME").val().replace(/(^\s*)|(\s*$)/g,"");
		var surname = $("#PURCHASE_SURNAME").val().replace(/(^\s*)|(\s*$)/g,"");
		var email = $("#PURCHASE_EMAIL").val().replace(/(^\s*)|(\s*$)/g,"");
		var mobile = $("#PURCHASE_PHONE").val().replace(/(^\s*)|(\s*$)/g,"");
		
		if(name == ""){
				alert_box("กรุณากรอกชื่อ",'PURCHASE_NAME');
				return false;
		}else{
			if(check_thai_eng(name) == "false"){
				msg = "กรุณากรอกชื่อให้ถูกต้อง";
				alert_box(msg,'PURCHASE_NAME')
				return false
			}	
		}
		if(surname == ""){
				alert_box("กรุณากรอกนามสกุล",'PURCHASE_SURNAME');
				return false;
		}else{
			if(check_thai_eng(surname) == "false"){
				msg = "กรุณากรอกนามสกุลให้ถูกต้อง";
				alert_box(msg,'PURCHASE_SURNAME')
				return false
			}	
		}
		if(mobile == ""){
				alert_box("กรุณากรอกเบอร์โทรศัพท์",'PURCHASE_PHONE');
				return false;
		}else{
			if(check_num(mobile) == "false"){ // error
				msg = "กรุณากรอกเบอร์โทรศัพท์มือถือเฉพาะตัวเลขเท่านั้น ";
				alert_box(msg,'PURCHASE_PHONE')
				return false
			}else{
				if(mobile[0] > 0){
					msg = "เบอร์โทรศัพท์มือถือต้องขึ้นต้นด้วย 0 เท่านั้น ";
					alert_box(msg,'PURCHASE_PHONE')
					return false
				}else{
					if(mobile.length < 10){
						msg = "กรุณากรอกเบอร์โทรศัพท์มือถือให้ครบ 10 หลัก ";
						alert_box(msg,'PURCHASE_PHONE')
						return false
					}
				}
			}
		}
		if($("#THEME").val()=='call_back_car'){ // theme_call_back_car
			if($("#categories_insurance_year").val() == "-"){
				alert_box("กรุณาระบุปีรถยนต์",'categories_insurance_year');
				return false;
			}
			if($("#categories_insurance_brand").val() == "-"){
				alert_box("กรุณาระบุยี่ห้อรถยนต์",'categories_insurance_brand');
				return false;
			}
			if($("#categories_insurance_age").val() == "-"){
				alert_box("กรุณาระบุรุ่น",'categories_insurance_age');
				return false;
			}
			if($("#select_insurance_02").val() == "-"){
				alert_box("กรุณาระบุรุ่นย่อย",'select_insurance_02');
				return false;
			}
			
		}
		if( $("#PURCHASE_EMAIL").val() != "" ){
			if(!isValidEmailAddress($("#PURCHASE_EMAIL").val())){
					$("#PURCHASE_EMAIL").focus();
					alert_box("รูปแบบอีเมลไม่ถูกต้อง",'PURCHASE_EMAIL');
					return false;
			}
		}else{
				alert_box("กรุณากรอกอีเมล",'PURCHASE_EMAIL');
				return false;
		}

		$.isLoading({text: 'กรุณารอสักครู่....'});
		$.ajax({
			url: '/form1Insert.php',
			type: "POST",
			data: data,
			success: function(data) {
				var obj = JSON.parse(data);
				//alert(obj.status);
				if(obj.status == "success"){
						
						 //alert(obj.step2_form+"----"+data)
					if (obj.step2_form==9) {
						var url = $("#SRC_IFRAME").val();
						if(url!=""){
							$("#iframe").attr("src",url);
						}
						//window.location = 'search.php';
						$.magnificPopup.close(); // Close popup turbo
						$.isLoading('hide');
						// ปิด pop up
					} else  if (obj.step2_form==1) { 
						if($("#OLDCOMPANY").val()==$("#NEWCOMPANY").val()){
							window.location = '/thankyou';
							$.isLoading('hide');
						}else{
							window.location = '/car_insurance/payment_form';
							$.isLoading('hide');
						}
					} else  {
						window.location = '/thankyou';
						$.isLoading('hide');
					} 
				}
			}//end success
		});//end ajax
    });//end click btNextStep
   
	$(".submit_search").click(function(){
		var text ="";
		if(submit_value==1){
		 	var carbrandid=$("#description_2").val();
			var caryear=$("#description_1").val();
			var carmodel=$("#description_3").val();
			var vehiclekey = $("#select_insurance_02").val();
			if(caryear=="-"){  text="กรุณาเลือกปีรถยนต์"; }
			else if(carbrandid==""){  text="กรุณาเลือกยี่ห้อรถยนต์"; }
			else if(carmodel=="-"){  text="กรุณาเลือกรุ่นรถยนต์"; }
			else if(vehiclekey=="-"){  text="กรุณาเลือกรุ่นย่อย"; }
			 
			if(text)
			{
				$('#compare_all').hide();
					alert_box(text,'description_3');
			}
			else
			{
				 $("#search_R2_P2").val(1);
				 $("#parse_cooke").submit();
			}
		}
	});
 
	var Min=2000;
	var Max=50000;
	if(jArrayPrice){
		fn_array=jArrayPrice;
		_.each(fn_array, function(item,index){item.name = parseFloat(item.name); });
			var Min = _.min(fn_array, 'name');

			var Max =_.max(fn_array, 'name');

			Min = Math.floor(parseFloat(Min.name/1000))*1000;
			Max = Math.ceil(parseFloat(Max.name/1000))*1000;

	}

	if(isNaN(Min)==true){
		Min=2000;
	}
	if(isNaN(Max)==true){
		Max=50000
	}
	if(Max){
		Max=Max+5000;	
	}
 
		$(".slider_left").slider({ 
 
 
	        min: Min, // change min price here
	        max: Max, // change max price here
	        range: true, 
	        values: [Min, Max] // default value
	    })         
	    .slider("pips", {
	        rest: false
	    }).slider("float");
 
		
	   $(".ui-slider-handle" ).mouseup(function() {
			var min_search = $('.ui-slider-handle:nth-child(2) > .ui-slider-tip').html();
			var max_search = $('.ui-slider-handle:nth-child(3) > .ui-slider-tip').html();
			var search_id ="";
			var numPricebar=0;
			var insure=$("#categories").val();
			$('.searh-sort').each(function(){ // turbo 
				var search_id=parseFloat($("#addclasscookie"+$(this).attr('id').substr(6)).data('range'));
 
				if(search_id>=min_search && search_id<=max_search){
					$(this).show();
 
				}else{
					$(this).hide();
					}
			});
			if(insure==1){
				numPricebar = parseInt($(".item.insure1:visible").length)+(parseInt($(".item.insure9:visible").length));
			}else{
				numPricebar = $(".item.insure"+insure+":visible").length;
			}
 
			$("#count_product").html(numPricebar)
			if(numPricebar==0){
				$(".none_product").show();		
			}else{
				$(".none_product").hide();		
			}
		});
		setTimeout(function(){ // หน้า compare add class active ก่อนถึงเริ่ม 
			var cur_compare = 0;
			var Keep_compare=$(".compare.item-active").length;//Turbo Edit keep compare by cookie
			if(Keep_compare>0){  cur_compare=Keep_compare; }
      },1000);
 
});
