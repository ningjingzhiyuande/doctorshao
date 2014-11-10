class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :kind
      t.timestamps
    end
  
    h={"about_doctorshao"=>"关于邵主任","about_doctorhao"=>"关于郝主任","contact_us"=>"联系我们","dingzhi"=>"定制美丽"}
    h.each do |k,v|
     p=Page.create(title: v,kind: k)
     c =  Content.new(body: "")
     c.item=p
     c.save
    end
    add_index :pages,:kind
   end 
 
end

{"shao"=>%w{

	<div class="about01_body">
		
		<div class="wrap_about01">
			
		<div class="park01">
			<div class="blank30"> </div>
			<p>大连医科大学整形外科毕业、国际医学美容学会会员、中国医师协会整形美容分会会员。韩整形医院工作10年，被誉为“韩国金 牌整形专家”。把具有高难度的颜面骨成形(美容整形)手术作为主要领域。</p>
		    <p>技术擅长：拥有16多年的从业经验，多年来致力研究东方女性的面部轮廓，提出“个性化定制整形”理念。在面部骨骼、面部除皱、眼部整形、鼻部整形、乳房整形、吸脂减肥等方面总结出一套自己独特的手术方法。</p>
		    <p>主攻方向：韩式面部轮廓精雕、韩式智能编码改脸型、韩式下颌角精细化定量整形、个性化面部骨性结构的整形。<br />
　　　　　“U”型流线式无痕上下及内外眼角的综合整形、无假体式纯自体材料隆鼻。</p>
		</div>
		<div class="park02">
        
          <div class="park02_left">
          
              
              <h2><img src="/images/img28.png" width="68" height="68" alt="邵大山">手术项目
               <span class="park02_h2_span01 artical_span ie6png"></span>
              </h2> 
          
              <div class="blank10"></div>
          
		  <p>面部微整形技术、内外眦成形术、各式方法重睑术、各种方法眼袋去除术、面部复杂畸形矫正术、面部疤痕修复术、综合鼻整形术、自体脂肪移植术、各种方法面部除皱术、邵氏无痕除皱、下颌角成形术、颧弓颧骨成形术、自体下巴截骨术、假体隆乳术、乳头缩小术、腹壁成形术、吸脂减肥术等。</p>
		  </div>
          <div class="park02_right">
            <h2><img src="/images/img28.png" width="68" height="68" alt="邵大山">文献
            <span class="park02_h2_span02 artical_span ie6png"></span>
            </h2> 
          
            <div class="blank10"></div>
          
          <p>邵主任曾多次多次参加国内、国际学术会议，与国际整形大师进行学术交流，在专业医学期刊杂志上发表论文十余篇，所发表的《保留眉头的切眉设计》、《假体选择对隆鼻手术的影响》、《皮瓣和肌皮瓣联合去眼袋》、《美学与仿生学在美容外科中的应用》等均获医学整形界的高度评价。</p>
			</div>
			
		</div>
		<div class="park03">
			<div class="park_div">
				<h2><img src="/images/bk26.png" alt="邵氏独有九大特色"></h2>
				
			</div>
			<div class="blank10"></div>
			 <div class="in_tsxmlist">
     
             </div>
			<div class="blank10"></div>
			
		</div>
	<div class="park04">
		<div class="park_div">
			<h2><img src="/images/bk27.png" alt="美丽预约流程从这里开始"></h2>
			<h3 class="park_zxrx">
             400-000-0000
            </h3>
		</div>
		<div class="park04_content">
		
       
        <div class="park04_left">
          <a href="#">
		  <img src="/images/bk32.png" width="365" height="294" alt="美丽案例">
		 </a>
         
         </div>
         <div class="park04_right">
         <div class="blank30"></div>
           <ul>
             <li>
             <div class="park04_right_imgbox">
              <img src="/images/img29.png" width="126" height="126" alt="预约成功，来院安排时间">
                <span class="park04_right_imgbox_span artical_span ie6png"></span>
              </div>  
                <i>01
                  <span class="park04_right_spani artical_span ie6png"></span>
                </i>
               <h3>预约成功，<br>
                来院安排时间</h3>
             </li>
              <li>
              <div class="park04_right_imgbox">
               <img src="/images/img30.png" width="126" height="126" alt="来院就诊，定制美丽方案">
               
               <span class="park04_right_imgbox_span artical_span ie6png"></span>
              </div>
                <i>02
                 <span class="park04_right_spani artical_span ie6png"></span>
                </i>
               <h3>来院就诊，<br>定制美丽方案</h3>
             </li>
              <li>
              <div class="park04_right_imgbox">
              <img src="/images/img31.png" width="126" height="126" alt="身体检查，进行美丽打造">
                <span class="park04_right_imgbox_span artical_span ie6png"></span>
              </div>
                <i>03
                 <span class="park04_right_spani artical_span ie6png"></span>
                </i>
               <h3>身体检查，<br>进行美丽打造</h3>
             </li>
              <li>
              <div class="park04_right_imgbox">
              <img src="/images/img32.png" width="126" height="126" alt="美丽，打造成功">
             <span class="park04_right_imgbox_span artical_span ie6png"></span>
              </div>
                <i>04
                 <span class="park04_right_spani artical_span ie6png"></span>
                </i>
               <h3>美丽， <br>打造成功</h3>
             </li>
           
           </ul>
         
        
         </div>
		<div class="blank30"></div>
		</div>
		
		
		
		
	</div>	
	<div class="park05">
		<div class="park_div">
			<h2><img src="/images/bk28.png" alt="美丽预约流程从这里开始"></h2>
			
		</div>
		<div class="park05_content">
		<div class="blank10"></div>
		 <div class="park05_content_left">
	      <ul>
           <li>
           <div class="park05_content_des">
           <time>2014</time>
           <p>与整形外科创始人合影与王志军教授合影</p>
           </div>
           <div class="park05_content_img">
            <img src="/images/img33.png" width="128" height="94" alt="">
           </div>
           
           </li>
            <li>
          
           <div class="park05_content_des">
           <time>2014</time>
           <p>与整形外科创始人合影与王志军教授合影</p>
          
           </div>
           <div class="park05_content_img">
            <img src="/images/img33.png" width="128" height="94" alt="">
           </div>
           
           </li>
                <li>
           <div class="park05_content_img">
            <img src="/images/img33.png" width="128" height="94" alt="">
           </div>
           <div class="park05_content_des">
           <time>2014</time>
           <p>与整形外科创始人合影与王志军教授合影</p>
           </div>
          
           
           </li>
                <li>
           <div class="park05_content_img">
            <img src="/images/img33.png" width="128" height="94" alt="">
           </div>
           <div class="park05_content_des">
           <time>2014</time>
           <p>与整形外科创始人合影与王志军教授合影</p>
           </div>
           
           
           </li>
          
          </ul>
	     </div>
	    <div class="park05_content_video">
	    	
	    	<img src="/images/img17.png">
	    </div>
	    
	    
	    <div class="blank10"></div>
		</div>
		
		<div class="park05_content_foot"></div>
		
		
	</div>	
		<div class="park06">
		<div class="park_div">
			<h2><img src="/images/bk29.png" alt="美丽预约流程从这里开始"></h2>
			
		</div>
		<div class="park06_bk">
		  <div class="park06_content">
          <hgroup>
            <h2  class="park06_station01"><i>01</i>咨询</h2>
            <h2 class="park06_station02"><i>02</i>预约</h2>
            <h2 class="park06_station03"><i>03</i>来院</h2>
            <h2 class="park06_station04"><i>04</i>方案定制</h2>
            <h2 class="park06_station03"><i>05</i>客户选择方案</h2>
            <h2 class="park06_station02"><i>06</i>检查</h2>
            <h2 class="park06_station01"><i>07</i>进行手术</h2>

          </hgroup>
          </div>
	    <div class="blank10"></div>
		</div>
		
		
		
		
	</div>		
		
		</div>
		
	</div>	


	},"hao"=>%w{
<div class="about02_body">
	<div class="blank20"></div>
		<div class="park01 about02auto">
			<div class="header">
				 <h2><img src="/images/bk34.png" alt="人物简介"></h2>
				<span><a href="#"><img src="/images/bk36.png"></a></span>
				
			</div>
			<div class="park01_content">
				<div class="blank20"></div>
				<div class="park01_content_img">
				<img src="/images/img18.png" alt="">
				</div>
				<div class="park01_contet_des">
					<p>专家头衔：中美无创整形交流会中方首席代表      中国医师协会注射美容分会专家组成员     韩国整形美容外科协会荣誉会员</p>
					<p>主攻方向：注射微整形、皮肤激光美容、面部年轻化、韩式生物焊接双眼皮、 开眼角及眼部精细化整形、韩式综合鼻整形、毛发移植、私密整形</p>
					<p>个人介绍：郝宝慧，早在2004年就赴韩留学，是国内较早到韩国学习整形美容技术的专家之一。师从于韩国著名的整形美容专家朴大焕、郑东学，主攻面部五官的精细微雕，郝主任思维活跃有前瞻性，深得韩国医疗美容技术的精髓，尤其对如何塑造漂亮有神的眼睛、挺拔秀美的鼻子深有研究，体现在设计上的个性化和技术上的精细化。
此外，郝宝慧在激光美容、痤疮凹疤修复、皮肤年轻化、水光注射、自体脂肪移植面部填充、私密整形、毛发移植等方面都有非常丰富的经验。</p>
				</div>
				<div class="blank30"></div>
			</div>
			
		</div>
		
		
		<div class="park02">
	    <div class="about02auto">
		<div>
			<h2><img src="/images/bk38.png" alt="擅长技术"></h2>
			
		</div>
	   <div class="park02_content">
	     <div id="park02_scroll">  
	   	  <div class="park02_scrollnr park02_content_01">
	   	  	<div class="park02_content_01_img">
	   	  		<img src="/images/img19.png" alt="">
	   	  		<img src="/images/img20.png" alt="">
	   	  		
	   	  		
	   	  	</div>
	   	  	<div class="park02_content_01_des">
	   	  		<h3><img src="/images/about_02_park02_h101.png" alt="zhuare"></h3>
	   	  		<div class="blank20"></div>
	   	  	   <p>①面部注射微雕：精于东西方美学研究，擅长根据时尚美学参数、求美者自身基础条件，雕琢出最适合、最有吸引力的美丽脸庞。</p>
	   	  	   <p>②玻尿酸注射：是国内较早开展玻尿酸注射隆鼻的专家之一，在近千例病例的基础上，积累了丰富的经验，是多家玻尿酸产品指定认证注射医生。</p>
	   	  	   <p>③水光注射：率先将风靡韩国的水光注射技术引进国内，曾帮助多位明星艺人施打，高超技术广受业内赞誉。</p>
	   	  	   <p>④指出年龄的改变与容量的丢失和软组织的改变有着直接关系，个性化处理泪沟、鼻唇沟及木偶线的三个“八字”，通过填充太阳穴、面颊部凹陷，可以提升口角到外眦、鼻翼到耳垂的交界点，使面部实现整体年轻。</p>
	   	  	</div>
	   	  </div>
	
	   	</div>
	   	<div class="park02_btn">
	   		 <ul id="park02_btnul">
	   		 	<li class="park02_btn_cur"><a href="#">注射美容</a></li>
	   		 	<li><a href="#">眼部精细化整形</a></li>
	   		 	<li><a href="#">韩式综合鼻整形</a></li>
	   		 	<li><a href="#">皮肤激光美容</a></li>
	   		 	
	   		 </ul>
	   		
	   		
	   	</div>
	   	
	   	
	   </div>		
			
			
		</div>
		<div class="blank20"></div>
		</div>
 	 <div class="park03">
 	 <div class="about02auto">
 	 <div class="header">
 	 	<h2>专家风采</h2>
 	 	<div class="park03_btn_box">
 	 		<ul id="park03_butul">
 	 			<li class="park03_left_Btn">left</li>
 	 			<li class="park03_right_Btn">right</li>
 	 		</ul>
 	 		
 	 		
 	 	</div>
 	 	
 	 </div>
 	 <div class="blank10"></div>
 	 <div class="park03_content">
 	 	<ul id="park03_scrollul" class="park03_scrollul">
 	 		<li>
 	 			<a href="#"><img src="/images/img21.png"  width="247" height="169" alt=""></a>
 	 			<h3><a  href="#">NO.1 专家风采</a></h3>
 	 		</li>
 	 		<li>
 	 			<a href="#"><img src="/images/img21.png"  width="247" height="169" alt=""></a>
 	 			<h3><a  href="#">NO.2专家风采</a></h3>
 	 		</li>
 	 		<li>
 	 			<a href="#"><img src="/images/img21.png"  width="247" height="169" alt=""></a>
 	 			<h3><a  href="#">NO.3 专家风采</a></h3>
 	 		</li>
 	 		<li >
 	 			<a href="#"><img src="/images/img21.png"  width="247" height="169" alt=""></a>
 	 			<h3><a  href="#">NO.4 专家风采</a></h3>
 	 		</li>
 	 		<li>
 	 			<a href="#"><img src="/images/img21.png"  width="247" height="169" alt=""></a>
 	 			<h3><a  href="#">NO.5专家风采</a></h3>
 	 		</li>
 	 		<li>
 	 			<a href="#"><img src="/images/img21.png"  width="247" height="169" alt=""></a>
 	 			<h3><a  href="#">NO.6 专家风采</a></h3>
 	 		</li>
 	 	</ul>
 	 	
 	 	
 	 </div>
 	 
 	  <div class="blank30"></div>
 	 	</div>
 	 </div>
 	 
	  <div class="park04 about02auto">
	  	<div class="blank20"></div>
	  	<div>
	  		<h2><img src="/images/bk42.png" alt="就诊流程"></h2>
	  	</div>
	  	<div class="blank20"></div>
        <div class="park04_jzlc">
	  	<img src="/images/bk43.png" alt="就诊流程"  width="1010" height="255" >
        <ul>
         <li>
         <i>01</i> 
         <p>预约成功，<br>

        安排来院时间</p>
         </li>
           <li>
         <i>02</i> 
         <p>来院就诊，<br>
        定制美丽方案</p>
         </li>
           <li>
         <i>03</i> 
         <p>身体检查，<br>

        进行美丽打造</p>
         </li>
           <li>
         <i>04</i> 
         <p>美丽，<br>
        打造成功</p>
         </li>
        
        </ul>
        
        <div class="zxzx">
        <a href="#" class="zxzx_btn"></a>
         <!--<h3>欢迎您</h3>-->
        </div>
         </div>
	  	<div class="blank30"></div>
	  </div>	
	  <div class="park05">
	  	<div class="about02auto">
	  		<div class="blank20"></div>
	  	<div>
	  	<h2><img src="/images/bk45.png" alt="定制您的美丽"></h2>
	  		
	  	</div>
	  	<div class="park05_content">
	  	<div class="blank20"></div>
	  	
           <img src="/images/bk46.png"  alt="定制您的美丽">
           	  	<div class="blank30"></div>
           	  	  	  	
           <h3>1v1个性定制美丽</h3>
           	  	<div class="blank10"></div>
            <p>郝主任在设计上不仅仅根据顾客的基础条件、职业及个人审美，她还鼓励顾客拿自己喜欢的明星的照片来，尽可能的打造出每个人喜欢的鼻子、眼睛来。在技术上受韩国专家的言传身教，非常严谨一丝不苟，精细化的程度可达到不留痕迹。</p>
	  	</div>
	  	</div>
	  </div>
	  
	  
	  <div class="park06 about02auto">
    	 <div>
	  		 	<h2><img src="/images/bk48.png" alt="项目"></h2>
	  		 </div>
	  	
	  		<div class="park06_content">
	  			 <div class="blank20"></div>
                 <div class="park06_xmnr">
	  			   <img src="/images/bk49.png" alt="项目内容" width="850" height="455">
	  			 <hgroup>
                  <h2 class="h2_01"><a href="#">开眼角及眼部精细化整形</a></h2>
                  <h2 class="h2_02"><a href="#">毛发移植</a></h2>
                  <h2 class="h2_03"><a href="#">注射微整形</a></h2>
                  <h2 class="h2_04"><a href="#">皮肤激光美容</a></h2>
                  <h2 class="h2_05"><a href="#">韩式综合鼻整形</a></h2>
                  <h2 class="h2_06"><a href="#">面部年轻化</a></h2>
                  <h2 class="h2_07"><a href="#">私密整形</a></h2>
                  <h2 class="h2_08"><a href="#">韩式生物焊接双眼皮</a></h2>
                 
                 </hgroup>
                 </div>
                     <div class="blank30"></div>
	  			 <div class="blank30"></div>
	  		
                  
	  		</div> 	
	  </div>
</div>	

	},"about_us"=>%w{<div class="in_nr">
	<div class="blank30">
	</div>
	<div class="width1000">
		<div class=" lxwm_nr">
			<div class="mbx">
				您当前的位置：<a href="#">首页</a> &gt; <a href="#">关于我们</a> &gt; <a href="#">联系我们</a> 
			</div>
			<div class="blank20">
			</div>
			<div class="lxwm_nr_map">
				<img src="images/img22.png" width="1000" height="300" alt="地图位置" /> 
			</div>
			<div class="blank30">
			</div>
			<div class="blank30">
			</div>
			<div class="lxwm_nr_zj01_img">
				<a href="#"> <img src="images/img23.png" width="182" height="182" alt="邵大山" /> </a> 
			</div>
			<div class="lxwm_nr_zj01_des">
				<h2>
					<a href="#">邵大山</a> 
				</h2>
				<div class="blank30">
				</div>
				<div class="blank10">
				</div>
				<p>
					海军总医院激光整形美容中心医学整形美容中心美容外科主任<br />
大连医科大学整形外科专业<br />
韩国整形美容诊所工作7年经历<br />
原金炫澈整形美容诊所首席专家<br />
擅长技术：各种重睑术、祛眼袋手术，"L"型眼部综合整形、"U"型眼部综合整形、"V"型眼部综合整形。
				</p>
			</div>
			<div class="blank30">
			</div>
			<div class="lxwm_nr_zj02_des">
				<h2>
					<a href="#">郝主任</a> 
				</h2>
				<div class="blank30">
				</div>
				<div class="blank10">
				</div>
				<p>
					海军总医院激光整形美容中心医学整形美容中心美容外科副主任<br />
毕业于白求恩医科大学临床医学系<br />
中华医学会整形外科分会会员<br />
中国医师协会美容与整形医师分会会员<br />
擅长技术：各种方法重睑术、眼周年轻化设计手术、去眼袋术、面部个性化改造
				</p>
			</div>
			<div class="lxwm_nr_zj02_img">
				<a href="#"> <img src="images/img24.png" width="182" height="182" alt="邵大山" /> </a> 
			</div>
			<div class="blank30">
			</div>
			<div class="lxwm_nr_mes">
				<h2>
					联系我们
				</h2>
				<div class="blank20">
				</div>
				<p>
					电话 微博 微信 等
                 	<!-- 地址: 天津市河西区小围堤道12号<br />
电话：022-12345678<br />
传真：022-12345678<br />
邮箱：-->
				</p>
			</div>
			<div class="blank30">
			</div>
			<div class="lxwm_nr_mes">
				<h2>
					驾车指引
				</h2>
				<div class="blank20">
				</div>
				<p>
					公交线路：请乘坐47, 47区间, 48, 48区间, 503, 676, 685, 830, 857, 867, 872, 912或 机场专线5路公交车路到光华桥下车，沿湘阳大街直走右转即到<br />
地铁线路：请乘坐地铁1号线，土城站下车，D口出，直行至十字路口右拐即到
				</p>
			</div>
		</div>
	</div>
</div>}

}
