    // 메인 이미지 슬라이드
    
    (function () {
      const slideList = document.querySelector(".slide_list"); // 슬라이드 리스트 요소 선택
      const slideContents = document.querySelectorAll(".slide_content"); // 슬라이드 콘텐츠 요소 선택
      const slideBtnPrev = document.querySelector(".left_btn"); // 이전 버튼 요소 선택
      const slideBtnNext = document.querySelector(".right_btn"); // 다음 버튼 요소 선택
      const pagination = document.querySelector('.slide_pagination'); // 페이지네이션 요소 선택
      const slideLen = slideContents.length; // 슬라이드 콘텐츠 개수
      const slideWidth = 970; // 슬라이드 너비
      const slideSpeed = 400; // 슬라이드 속도
      const startNum = 0; // 초기 슬라이드 인덱스 (0 ~ 4)
      let intervalId = slideContents.length; // 슬라이드 인터벌 ID

      slideList.style.width = slideWidth * (slideLen + 2) + "px"; // 슬라이드 리스트 너비 설정

      let firstChild = slideList.firstElementChild;
      let lastChild = slideList.lastElementChild;
      let clonedFirst = firstChild.cloneNode(true); // 첫 번째 슬라이드 복제
      let clonedLast = lastChild.cloneNode(true); // 마지막 슬라이드 복제

      slideList.appendChild(clonedFirst); // 복제한 첫 번째 슬라이드를 슬라이드 리스트 끝에 추가
      slideList.insertBefore(clonedLast, slideList.firstElementChild); // 복제한 마지막 슬라이드를 슬라이드 리스트 맨 앞에 추가

      let pageChild = '';
      for (let i = 0; i < slideLen; i++) {
        pageChild += `<li class="dot${i === startNum ? ' dot_active' : ''}" data-index="${i}"><a href="#"></a></li>`; // 페이지네이션 점 생성
      }
      pagination.innerHTML = pageChild; // 페이지네이션에 점 추가
      const pageDots = document.querySelectorAll('.dot'); // 페이지네이션 점 요소 선택

      slideList.style.transform = "translate3d(-" + (slideWidth * (startNum + 1)) + "px, 0px, 0px)"; // 초기 슬라이드 위치 설정

      let curIndex = startNum; // 현재 슬라이드 인덱스
      let curSlide = slideContents[curIndex]; // 현재 활성화된 슬라이드
      curSlide.classList.add('slide_active'); // 현재 활성화된 슬라이드에 클래스 추가

      slideBtnNext.addEventListener('click', function () {
        if (curIndex <= slideLen - 1) {
          slideList.style.transition = slideSpeed + "ms"; // 슬라이드 애니메이션 속도 설정
          slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 2)) + "px, 0px, 0px)"; // 슬라이드 이동
        }
        if (curIndex === slideLen - 1) {
          setTimeout(function () {
            slideList.style.transition = "0ms";
            slideList.style.transform = "translate3d(-" + slideWidth + "px, 0px, 0px)"; // 마지막 슬라이드에서 첫 번째 슬라이드로 순환
          }, slideSpeed);
          curIndex = -1;
        }
        curSlide.classList.remove('slide_active'); // 현재 슬라이드의 활성화 클래스 제거
        pageDots[(curIndex === -1) ? slideLen - 1 : curIndex].classList.remove('dot_active'); // 현재 페이지네이션 점의 활성화 클래스 제거
        curSlide = slideContents[++curIndex]; // 다음 슬라이드로 변경
        curSlide.classList.add('slide_active'); // 다음 슬라이드에 활성화 클래스 추가
        pageDots[curIndex].classList.add('dot_active'); // 다음 페이지네이션 점에 활성화 클래스 추가
      });


      slideBtnPrev.addEventListener('click', function () {
        if (curIndex >= 0) {
          slideList.style.transition = slideSpeed + "ms"; // 슬라이드 애니메이션 속도 설정
          slideList.style.transform = "translate3d(-" + (slideWidth * curIndex) + "px, 0px, 0px)"; // 슬라이드 이동
        }
        if (curIndex === 0) {
          setTimeout(function () {
            slideList.style.transition = "0ms";
            slideList.style.transform = "translate3d(-" + (slideWidth * slideLen) + "px, 0px, 0px)"; // 첫 번째 슬라이드에서 마지막 슬라이드로 순환
          }, slideSpeed);
          curIndex = slideLen;
        }
        curSlide.classList.remove('slide_active'); // 현재 슬라이드의 활성화 클래스 제거
        pageDots[(curIndex === slideLen) ? 0 : curIndex].classList.remove('dot_active'); // 현재 페이지네이션 점의 활성화 클래스 제거
        curSlide = slideContents[--curIndex]; // 이전 슬라이드로 변경
        curSlide.classList.add('slide_active'); // 이전 슬라이드에 활성화 클래스 추가
        pageDots[curIndex].classList.add('dot_active'); // 이전 페이지네이션 점에 활성화 클래스 추가
      });

      // 메인 이미지 닷버튼
      let curDot;
      Array.prototype.forEach.call(pageDots, function (dot, i) {
        dot.addEventListener('click', function (e) {
          e.preventDefault();
          curDot = document.querySelector('.dot_active');
          curDot.classList.remove('dot_active');

          curDot = this;
          this.classList.add('dot_active');

          curSlide.classList.remove('slide_active');
          curIndex = Number(this.getAttribute('data-index'));
          curSlide = slideContents[curIndex];
          curSlide.classList.add('slide_active');
          slideList.style.transition = slideSpeed + "ms"; // 슬라이드 애니메이션 속도 설정
          slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 1)) + "px, 0px, 0px)"; // 슬라이드 이동
        });
      });

      // 자동 슬라이드
      function startSlide() {
        intervalId = setInterval(function () {
          slideBtnNext.click();
        }, 4000);
      }

      function pauseSlide() {
        clearInterval(intervalId);
      }

      startSlide();
      slideList.addEventListener('mouseover', pauseSlide);
      slideList.addEventListener('mouseout', startSlide);
      slideBtnNext.addEventListener('mouseover', pauseSlide);
      slideBtnNext.addEventListener('mouseout', startSlide);
      slideBtnPrev.addEventListener('mouseover', pauseSlide);
      slideBtnPrev.addEventListener('mouseout', startSlide);
    })();



    // 인기 서비스 네비
    const svgSpanon = document.getElementById("svgSpanon");
    const svgSpanto = document.getElementById("svgSpanto");
    const svgSpanth = document.getElementById("svgSpanth");
    const linehv = document.getElementById("line_hv");
    const lineht = document.getElementById("line_ht");
    const linehtt = document.getElementById("line_htt");

    // over
    svgSpanon.addEventListener('mouseover', function () {
      linehv.style.display = "block";
      lineht.style.display = "none";
      linehtt.style.display = "none";
    });
    svgSpanto.addEventListener('mouseover', function () {
      linehv.style.display = "none";
      lineht.style.display = "block";
      linehtt.style.display = "none";
    });
    svgSpanth.addEventListener('mouseover', function () {
      linehv.style.display = "none";
      lineht.style.display = "none";
      linehtt.style.display = "block";
    });

    // out
    svgSpanon.addEventListener('mouseout', function () {
      linehv.style.display = "block";
      lineht.style.display = "none";
      linehtt.style.display = "none";
    });
    svgSpanto.addEventListener('mouseout', function () {
      linehv.style.display = "none";
      lineht.style.display = "block";
      linehtt.style.display = "none";
    });
    svgSpanth.addEventListener('mouseout', function () {
      linehv.style.display = "none";
      lineht.style.display = "none";
      linehtt.style.display = "block";
    });

    // 인기서비스 리스트 슬라이드
    const showpopbtn = document.getElementById("showpopbtn");
    const showstory = document.getElementById("showstory");
    const showknowhow = document.getElementById("showknowhow");

    const popularService = document.querySelector(".popslide");
    const storySlide = document.querySelector(".storyslide");
    const knowhowSlide = document.querySelector(".knowhowslide");

    const slides = document.querySelectorAll(".popsvc_box");
    const totalSlides = slides.length;

    let slideIndex = 0;
    const slideWidth = 246;
    const slideContainer = document.querySelector(".popsvc_list");
    const slideContainerto = document.querySelector(".ezengo_story");
    const slideContainertt = document.querySelector(".gosu_know_how");
    const leftButton = document.querySelector(".pop_left_btn");
    const rightButton = document.querySelector(".pop_right_btn");

    function slideTo(index) {
      if (index < 0 || index >= totalSlides) return;
      const translateX = Math.max(-slideWidth * index, -983);
      slideContainer.style.transform = `translateX(${translateX}px)`;
      slideContainerto.style.transform = `translateX(${translateX}px)`;
      slideContainertt.style.transform = `translateX(${translateX}px)`;
      slideIndex = index;
      toggleButtons();
    }

    function slideLeft() {
      slideTo(slideIndex - 2);
    }

    function slideRight() {
      slideTo(slideIndex + 2);
    }

    function toggleButtons() {
      leftButton.style.visibility = slideIndex <= 0 ? "hidden" : "visible";
      rightButton.style.visibility = slideIndex >= totalSlides - 4 ? "hidden" : "visible";
    }

    function resetSlides() {
      slideTo(0); // 첫 번째 슬라이드로 초기화
      toggleButtons(); // 버튼 가시성 초기화
    }

    showpopbtn.addEventListener("click", function () {
      popularService.style.display = "block";
      storySlide.style.display = "none";
      knowhowSlide.style.display = "none";
      resetSlides(); // "이젠고 인기 서비스"로 전환 시 슬라이드 초기화
    });

    showstory.addEventListener("click", function () {
      popularService.style.display = "none";
      storySlide.style.display = "block";
      knowhowSlide.style.display = "none";
      resetSlides(); // "이젠고 이야기"로 전환 시 슬라이드 초기화
    });

    showknowhow.addEventListener("click", function () {
      popularService.style.display = "none";
      storySlide.style.display = "none";
      knowhowSlide.style.display = "block";
      resetSlides(); // "고수의 노하우"로 전환 시 슬라이드 초기화
    });
    
    leftButton.addEventListener("click", slideLeft);
    rightButton.addEventListener("click", slideRight);
    
    
    
    
    resetSlides(); // 초기에 슬라이드 초기화 함수 호출
    
    let hotGosuItems = document.querySelectorAll('.lessonbox');
    
    window.addEventListener('DOMContentLoaded', (event) => {
      // 모든 버튼 요소를 선택합니다.
      
      
      const buttons = document.querySelectorAll('.hotbtn button');
      const lessonBtn = document.getElementById("lesson");   
      const lessonVal = lessonBtn.value;
      spreadCount(lessonVal);
      lessongetMasterSpread(lessonVal);
      
      let home_livingBtnVal = home_livingBtn.value;
      homespreadCount(home_livingBtnVal);
      homegetMasterSpread(home_livingBtnVal);
      
      let eventBtnVal = eventBtn.value;
      eventspreadCount(eventBtnVal);
      eventgetMasterSpread(eventBtnVal);
      
      let businessBtnVal = businessBtn.value;
      businessspreadCount(businessBtnVal);
      businessgetMasterSpread(businessBtnVal);
      
      let designBtnVal = designBtn.value;
      designspreadCount(designBtnVal);
      designgetMasterSpread(designBtnVal);
      
      
      // 각 버튼에 클릭 이벤트를 추가합니다.
      buttons.forEach(button => {
        button.addEventListener('click', function () {
          // 클릭한 버튼에만 clicked 클래스를 추가합니다.
          buttons.forEach(btn => {
            btn.classList.remove('clicked');
          });
          this.classList.add('clicked');
        });
      });
    });
    
    
    
    // 지금 인기있는 고수
    
    const hotGosuSlide = document.querySelector(".hotgosu_slidebox");
    const lessonList = document.querySelector(".lesson_list");
    const home_livingList = document.querySelector(".home_living_list");
    const eventList = document.querySelector(".event_list");
    const businessList = document.querySelector(".business_list");
    const designList = document.querySelector(".design_list");
    // 지금 인기있는 고수
    
    const hotLeftButton = document.querySelector(".hot_left_btn");
    const hotRightButton = document.querySelector(".hot_right_btn");
    
    const lessonBtn = document.getElementById("lesson");
    const home_livingBtn = document.getElementById("home_living");
    const eventBtn = document.getElementById("event");
    const businessBtn = document.getElementById("business");
    const designBtn = document.getElementById("design");
    
    const lessonSlide = document.querySelector(".lessonslide");
    const home_livingSlide = document.querySelector(".home_livingslide");
    const eventSlide = document.querySelector(".eventslide");
    const businessSlide = document.querySelector(".businessslide");
    const designSlide = document.querySelector(".designslide");
    
    
    let hotSlideIndex = 0;
    const hotSlideWidth = 197.6;
    const hotSlideContainerWidth = hotGosuSlide.offsetWidth;
    
    
    
    function hotSlideTo(index) {
      hotGosuItems = document.querySelectorAll('.lessonbox');
      if (index < 0 || index >= hotGosuItems.length) return;
      const translateX = -hotSlideWidth * index;
      lessonList.style.transform = `translateX(${translateX}px)`;
      home_livingList.style.transform = `translateX(${translateX}px)`;
      eventList.style.transform = `translateX(${translateX}px)`;
      businessList.style.transform = `translateX(${translateX}px)`;
      designList.style.transform = `translateX(${translateX}px)`;
      hotSlideIndex = index;
      hotToggleButtons();
    }
    
    function hotSlideLeft() {
      hotSlideTo(hotSlideIndex - 3);
    }
    
    function hotSlideRight() {
      
      hotSlideTo(hotSlideIndex + 3);
    }
    
    function hotToggleButtons() {
      console.log(hotSlideIndex);
      hotLeftButton.style.visibility = hotSlideIndex <= 0 ? "hidden" : "visible";
      hotRightButton.style.visibility = hotSlideIndex >= hotGosuItems.length - 4 ? "hidden" : "visible";
    }
    
    function showCategorySlide(slideElement) {
      [lessonSlide, home_livingSlide, eventSlide, businessSlide, designSlide].forEach((slide) => {
        slide.style.display = slide === slideElement ? "block" : "none";
      });
      initializeSlides();
    }
    
    function initializeSlides() {
      hotSlideIndex = 0;
      hotSlideTo(hotSlideIndex);
    }

    // 초기에 슬라이드 초기화 함수 호출
    initializeSlides();

    lessonBtn.addEventListener("click", () =>showCategorySlide(lessonSlide));
    home_livingBtn.addEventListener("click", () => showCategorySlide(home_livingSlide));
    eventBtn.addEventListener("click", () => showCategorySlide(eventSlide));
    businessBtn.addEventListener("click", () => showCategorySlide(businessSlide));
    designBtn.addEventListener("click", () => showCategorySlide(designSlide));
    
    hotLeftButton.addEventListener("click", hotSlideLeft);
    hotRightButton.addEventListener("click", hotSlideRight);
    
    document.addEventListener('DOMContentLoaded', function () {
      const slideContainer = document.querySelector('.JoinSlideBox');
      const slideList = document.querySelector('.JoinList');
      const slideItems = document.querySelectorAll('.Listbox');
      const leftBtn = document.querySelector('.Join_left_btn');
      const rightBtn = document.querySelector('.Join_right_btn');
      const slideDots = document.querySelector('.JoinSlide_Dot');
      const dots = [];
      
      let currentSlide = 0;
      
      // 현재 슬라이드를 보여주고 활성화된 점(Dot)을 업데이트하는 함수
      function showSlide(index) {
        slideList.style.transform = `translateX(-${index * 100}%)`;
        dots.forEach((dot, dotIndex) => {
          dot.classList.toggle('active', dotIndex === index);
        });
      }
      
      // 왼쪽 버튼 클릭을 처리하는 함수
      function slideLeft() {
        currentSlide = (currentSlide - 1 + slideItems.length) % slideItems.length;
        showSlide(currentSlide);
      }
      
      // 오른쪽 버튼 클릭을 처리하는 함수
      function slideRight() {
        currentSlide = (currentSlide + 1) % slideItems.length;
        showSlide(currentSlide);
      }
      
      // 버튼에 이벤트 리스너 추가
      leftBtn.addEventListener('click', slideLeft);
      rightBtn.addEventListener('click', slideRight);
      
      // 초기 슬라이드와 초기 활성화된 점 설정
      showSlide(currentSlide);
    });
    
    
    // 현재 고수몇명있는지 체크
    async function getspreadMasterCounter(upCategoryVal){
      try {
        
        const resp = await fetch('/master/masterCount/'+upCategoryVal);
        const result = await resp.json();
        return result;
      } catch (err) {
        console.log(err);
      }
    }
    // 레슨 마스터 수불러오기
    function spreadCount(upCategoryVal){
      getspreadMasterCounter(upCategoryVal).then(result=>{
        
        let div = document.getElementById('hotcontentMasterCount1');
        if(result>0){
          
          div.innerHTML="";
          
          let html =`<p><span>${result}명</span>의</p>`;
          html +=`<p>고수 만나보기 ></p>`;
          
          console.log(html);
          div.innerHTML = html; //누적해서담기
          
        }else{
          
          return false;
        }
        
      })
      
    }
    // home 마스터  카운트 불러오기
    function homespreadCount(upCategoryVal){
      getspreadMasterCounter(upCategoryVal).then(result=>{
        
        let div = document.getElementById('hotcontentMasterCount2');
        if(result>0){
          
          div.innerHTML="";
          
          let html =`<p><span>${result}명</span>의</p>`;
          html +=`<p>고수 만나보기 ></p>`;
          
          console.log(html);
          div.innerHTML = html; //누적해서담기
          
        }else{
          
          return false;
        }
        
      })
      
    }
    // event 마스터  카운트 불러오기
    function eventspreadCount(upCategoryVal){
      getspreadMasterCounter(upCategoryVal).then(result=>{
        
        let div = document.getElementById('hotcontentMasterCount3');

        if(result>0){
          
          div.innerHTML="";
          
          let html =`<p><span>${result}명</span>의</p>`;
          html +=`<p>고수 만나보기 ></p>`;
          
          console.log(html);
          div.innerHTML = html; //누적해서담기
          
        }else{
          
          return false;
        }
        
      })
      
    }

    function businessspreadCount(upCategoryVal){
      getspreadMasterCounter(upCategoryVal).then(result=>{
        
        let div = document.getElementById('hotcontentMasterCount4');

        if(result>0){
          
          div.innerHTML="";
          
          let html =`<p><span>${result}명</span>의</p>`;
          html +=`<p>고수 만나보기 ></p>`;
          
          console.log(html);
          div.innerHTML = html; //누적해서담기
          
        }else{
          
          return false;
        }
        
      })
      
    }

    function designspreadCount(upCategoryVal){
      getspreadMasterCounter(upCategoryVal).then(result=>{
        
        let div = document.getElementById('hotcontentMasterCount5');

        if(result>0){
          
          div.innerHTML="";
          
          let html =`<p><span>${result}명</span>의</p>`;
          html +=`<p>고수 만나보기 ></p>`;
          
          console.log(html);
          div.innerHTML = html; //누적해서담기
          
        }else{
          
          return false;
        }
        
      })
      
    }
    // 각 카테고리에 잇는 리스트 가져오기
    // 레슨
    
    
    async function getMasterSpreadListFromServer(upCategoryVal){
      try {
        const resp = await fetch("/master/lessonMaster/"+upCategoryVal);
        const result = await resp.json();
        return result;
      } catch (err) {
        console.log(result);
      }
    }
    
    function lessongetMasterSpread(upCategoryVal){
      getMasterSpreadListFromServer(upCategoryVal).then(result=>{
        console.log(result);
        let div = document.getElementById("lessonlist");
        if(result.length>0){
          div.innerHTML="";
          for(let mvo of result){
            let html = `<div class="lessonbox">`;
            html += `<a href="#">`;
            html += `<div class="hotsubicon">`;
            html += `<img src="/resources/image/header/프로필box.png" alt="">`;
            html += `<div class="besticon"><span>BEST</span></div>`;
            html += `  </div>`;
            html += `<div class="hotsubcontent">`;
            html += `<span class="gosuname">${mvo.masterName}</span>`
            html += `<div class="payicon">`;
            html += `<img src="/resources/image/body_img/지금 인기 있는 고수/payicon.png" alt="">`;
            html += `<span>이젠페이</span>`;
            html += `</div>`;
            html += `<span class="gosuprofile">경력 n년 · 평균 n분 내 응답</span>`;
            html += `</div></a></div>`;
            div.innerHTML += html;
            console.log(div);
          }
          
        }else{
          return false;
        }       
        
    })
  }
  //홈 마스터 리스트 불러오기
  function homegetMasterSpread(upCategoryVal){
    getMasterSpreadListFromServer(upCategoryVal).then(result=>{
      console.log(result);
      let div = document.getElementById("homelist");
      if(result.length>0){
        div.innerHTML="";
        for(let mvo of result){
          let html = `<div class="home_livingbox">`;
          html += `<a href="#">`;
          html += `<div class="hotsubicon">`;
          html += `<img src="/resources/image/header/프로필box.png" alt="">`;
          html += `<div class="besticon"><span>BEST</span></div>`;
          html += `  </div>`;
          html += `<div class="hotsubcontent">`;
          html += `<span class="gosuname">${mvo.masterName}</span>`
          html += `<div class="payicon">`;
          html += `<img src="/resources/image/body_img/지금 인기 있는 고수/payicon.png" alt="">`;
          html += `<span>이젠페이</span>`;
          html += `</div>`;
          html += `<span class="gosuprofile">경력 n년 · 평균 n분 내 응답</span>`;
          html += `</div></a></div>`;
          div.innerHTML += html;
        }
        
      }else{
        return false;
      }       
      
    })
  }
  
  //이벤트 마스터 리스트 불러오기
  function eventgetMasterSpread(upCategoryVal){
    getMasterSpreadListFromServer(upCategoryVal).then(result=>{
      console.log(result);
      let div = document.getElementById("eventlist");
      if(result.length>0){
        div.innerHTML="";
        for(let mvo of result){
          let html = `<div class="eventbox">`;
          html += `<a href="#">`;
          html += `<div class="hotsubicon">`;
          html += `<img src="/resources/image/header/프로필box.png" alt="">`;
          html += `<div class="besticon"><span>BEST</span></div>`;
          html += `  </div>`;
          html += `<div class="hotsubcontent">`;
          html += `<span class="gosuname">${mvo.masterName}</span>`
          html += `<div class="payicon">`;
          html += `<img src="/resources/image/body_img/지금 인기 있는 고수/payicon.png" alt="">`;
          html += `<span>이젠페이</span>`;
          html += `</div>`;
          html += `<span class="gosuprofile">경력 n년 · 평균 n분 내 응답</span>`;
          html += `</div></a></div>`;
          div.innerHTML += html;
        }
        
      }else{
        return false;
      }       
      
    })
  }
    //비즈니스 마스터 리스트 불러오기
    function businessgetMasterSpread(upCategoryVal){
      getMasterSpreadListFromServer(upCategoryVal).then(result=>{
        console.log(result);
        let div = document.getElementById("businesslist");
        if(result.length>0){
          div.innerHTML="";
          for(let mvo of result){
            let html = `<div class="businessbox">`;
            html += `<a href="#">`;
            html += `<div class="hotsubicon">`;
            html += `<img src="/resources/image/header/프로필box.png" alt="">`;
            html += `<div class="besticon"><span>BEST</span></div>`;
            html += `  </div>`;
            html += `<div class="hotsubcontent">`;
            html += `<span class="gosuname">${mvo.masterName}</span>`
            html += `<div class="payicon">`;
            html += `<img src="/resources/image/body_img/지금 인기 있는 고수/payicon.png" alt="">`;
            html += `<span>이젠페이</span>`;
            html += `</div>`;
            html += `<span class="gosuprofile">경력 n년 · 평균 n분 내 응답</span>`;
            html += `</div></a></div>`;
            div.innerHTML += html;
          }
          
        }else{
          return false;
        }       
        
      })
    }
        //디자인 마스터 리스트 불러오기
        function designgetMasterSpread(upCategoryVal){
          getMasterSpreadListFromServer(upCategoryVal).then(result=>{
            console.log(result);
            const div = document.getElementById("designlist");
            if(result.length>0){
              div.innerHTML="";
              for(let mvo of result){
                let html = `<div class="designbox">`;
                html += `<a href="#">`;
                html += `<div class="hotsubicon">`;
                html += `<img src="/resources/image/header/프로필box.png" alt="">`;
                html += `<div class="besticon"><span>BEST</span></div>`;
                html += `  </div>`;
                html += `<div class="hotsubcontent">`;
                html += `<span class="gosuname">${mvo.masterName}</span>`
                html += `<div class="payicon">`;
                html += `<img src="/resources/image/body_img/지금 인기 있는 고수/payicon.png" alt="">`;
                html += `<span>이젠페이</span>`;
                html += `</div>`;
                html += `<span class="gosuprofile">경력 n년 · 평균 n분 내 응답</span>`;
                html += `</div></a></div>`;
                div.innerHTML += html;
              }
              
            }else{
              return false;
            }       
            
          })
        }

  //홈리빙 버튼 누를때 마스터리스트 불러오기
  home_livingBtn.addEventListener("click",()=>{
    let home_livingBtnVal = home_livingBtn.value;
    homespreadCount(home_livingBtnVal);
    homegetMasterSpread(home_livingBtnVal);
  })
  // 이벤트 버튼 누를때 마스터리스트 불러오기
  eventBtn.addEventListener("click",()=>{
    let eventBtnVal = eventBtn.value;
    eventspreadCount(eventBtnVal);
    eventgetMasterSpread(eventBtnVal);
  })
  // 비즈니스 버튼 누를때 마스터 리스트 불러오기
  businessBtn.addEventListener("click",()=>{
    let businessBtnVal = businessBtn.value;
    eventspreadCount(businessBtnVal);
    eventgetMasterSpread(businessBtnVal);
  })
  // 디자인 버튼 누를때 마스터 리스트 불러오기
  designBtn.addEventListener("click",()=>{
    let designBtnVal = designBtn.value;
    eventspreadCount(designBtnVal);
    eventgetMasterSpread(designBtnVal);
  })
  
