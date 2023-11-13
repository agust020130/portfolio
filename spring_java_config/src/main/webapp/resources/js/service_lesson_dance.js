let value = new Array(7);
function nextPage(){
    console.log("nextBtn 함수 시작````````````````````````````");
    console.log("hidden value 값 : "+Number(document.getElementById('value').value));
    console.log("hidden value 값 : "+typeof Number(document.getElementById('value').value));
    console.log("ul태그 자식 개수 : "+document.getElementById('selectUl').childElementCount);
    console.log("selectLi의 크기 : "+document.getElementsByClassName('selectLi').length);
    let execute = false;
    
    for(let i=0; i<document.getElementsByClassName('selectLi').length; i++){
        console.log(`${i}번째 : `+document.getElementsByClassName('selectLi')[i].childNodes[0].childNodes[0].checked);
        if(document.getElementsByClassName('selectLi')[i].childNodes[0].childNodes[0].checked){
            execute = true;
            value[Number(document.getElementById('value').value)] = i; 
            console.log("---input value 값 확인 : "+value[Number(document.getElementById('value').value)]);
            break;
        }
        
    }
    
    if(execute){    
        if(!!document.getElementById('chooseOption')){
            document.getElementById('chooseOption').remove();
        }
    }else{
        if(!!document.getElementById('chooseOption')){
            document.getElementById('chooseOption').remove();
        }
        let p = document.createElement('p');
        p.innerText = `옵션을 선택해주세요.`;
        p.setAttribute('id', 'chooseOption');
        document.getElementById('selectMainBox').appendChild(p);
        return;
    }
    if(document.getElementById('value').value == 0 && value[0] == document.getElementsByClassName('selectLi').length-1){
        if(document.getElementById('inputEtc').value.trim().length > 0 ){
            console.log("if문 진입");
        }else{
            let inputEtcPtag = document.createElement('p');
            inputEtcPtag.innerText = `옵션을 선택해주세요.`;
            inputEtcPtag.setAttribute('id', 'inputEtcPtag');
            document.getElementById('lastSelectLi').appendChild(inputEtcPtag);
            document.getElementsByClassName("selectLi")[4].childNodes[0].style.height = "140px";
            return;
        }
    }
    if(Number(document.getElementById('value').value)==7){
        console.log('셀렉트 박스 버튼 진입');
        console.log("1번 : "+document.getElementsByClassName('selectOption')[0].value);
        console.log("2번 : "+document.getElementsByClassName('selectOption')[1].value);
        console.log("3번 : "+document.getElementsByClassName('selectOption')[2].value);
    }

    let label1 = document.createElement('label');
    let label2 = document.createElement('label');
    let label3 = document.createElement('label');
    let label4 = document.createElement('label');


    switch(document.getElementById('value').value){
        case '0': 
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `어떻게 진행하기 원하시나요?`;
            document.getElementsByClassName('selectLi')[0].innerHTML = '<div id="firstSelectLi"><input type="radio" name="radio" class="radio"><p>고수가 있는 곳으로 갈게요.</p></div>';
            document.getElementsByClassName('selectLi')[1].innerHTML = '<div><input type="radio" name="radio" class="radio"><p>제가 있는 곳으로 와주세요.</p></div>';
            document.getElementsByClassName('selectLi')[2].innerHTML = '<div><input type="radio" name="radio" class="radio"><p>온라인/화상 수업 원해요.</p></div>';
            document.getElementsByClassName('selectLi')[3].innerHTML = '<div id="lastSelectLi"><input type="radio" name="radio" class="radio"><p>어떤 방식이든 상관없어요.</p></div>';
            document.getElementsByClassName('selectLi')[4].remove();
            document.getElementsByTagName('label')[4].remove();
            document.getElementById('value').value = 1;
            document.getElementById('selectBarAni').animate([    
                { width: "64px"} 
            ], {duration: 300,
                fill: "forwards", easing: "ease-out"});
                document.getElementById('selectBarPercent').innerText = '14%';
            break;
        case '1':
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `레슨생의 연령대는 어떻게 되나요?`;
            document.getElementsByClassName('selectLi')[0].innerHTML = '<div id="firstSelectLi"><input type="radio" name="radio" class="radio"><p>10대 미만</p></div>';
            document.getElementsByClassName('selectLi')[1].innerHTML = '<div><input type="radio" name="radio" class="radio"><p>10대</p></div>';
            document.getElementsByClassName('selectLi')[2].innerHTML = '<div><input type="radio" name="radio" class="radio"><p>20대</p></div>';
            document.getElementsByClassName('selectLi')[3].innerHTML = '<div><input type="radio" name="radio" class="radio"><p>30대</p></div>';
            label1.innerHTML = `<li class="selectLi"><div><input type="radio" name="radio" class="radio"><p>40대</p></div></li>`;
            document.getElementById('selectUl').appendChild(label1);
            label2.innerHTML = `<li class="selectLi"><div id="lastSelectLi"><input type="radio" name="radio" class="radio"><p>50대 이상</p></div></li>`;
            document.getElementById('selectUl').appendChild(label2);
            document.getElementById('value').value = 2;
            document.getElementById('selectBarAni').animate([    
                { width: "128px"} 
            ], {duration: 300,
                fill: "forwards", easing: "ease-out"});
            document.getElementById('selectBarPercent').innerText = '28%';
            break;
        case '2':
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `레슨생의 성별은 무엇인가요?`;
            document.getElementsByClassName('selectLi')[0].innerHTML = `<div id="firstSelectLi"><input type="radio" name="radio" class="radio"><p>남자</p></div>`;
            document.getElementsByClassName('selectLi')[1].innerHTML = `<div id="lastSelectLi"><input type="radio" name="radio" class="radio"><p>여자</p></div>`;
            document.getElementsByClassName('selectLi')[5].remove();
            document.getElementsByTagName('label')[5].remove();
            document.getElementsByClassName('selectLi')[4].remove();
            document.getElementsByTagName('label')[4].remove();
            document.getElementsByClassName('selectLi')[3].remove();
            document.getElementsByTagName('label')[3].remove();
            document.getElementsByClassName('selectLi')[2].remove();
            document.getElementsByTagName('label')[2].remove();
            document.getElementById('value').value = 3;
            document.getElementById('selectBarAni').animate([    
                { width: "192px"} 
            ], {duration: 300,
                fill: "forwards", easing: "ease-out"});
            document.getElementById('selectBarPercent').innerText = '42%';
            break;
        case '3':
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `선호하는 고수의 성별이 있나요?`;
            document.getElementsByClassName('selectLi')[0].innerHTML = `<div id="firstSelectLi"><input type="radio" name="radio" class="radio"><p>무관</p></div>`;
            document.getElementsByClassName('selectLi')[1].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>남자</p></div>`;
            label1.innerHTML = `<li class="selectLi"><div id="lastSelectLi"><input type="radio" name="radio" class="radio"><p>여자</p></div></li>`;
            document.getElementById('selectUl').appendChild(label1);
            document.getElementById('value').value = 4;
            document.getElementById('selectBarAni').animate([    
                { width: "256px"} 
            ], {duration: 300,
                fill: "forwards", easing: "ease-out"});
                document.getElementById('selectBarPercent').innerText = '56%';
            break;
        case '4':
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `레슨받기 좋은 요일은 언제인가요?`;
            document.getElementsByClassName('selectLi')[0].innerHTML = `<div id="firstSelectLi"><input type="radio" name="radio" class="radio"><p>월요일</p></div>`;
            document.getElementsByClassName('selectLi')[1].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>화요일</p></div>`;
            document.getElementsByClassName('selectLi')[2].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>수요일</p></div>`;
            label1.innerHTML = `<li class="selectLi"><div><input type="radio" name="radio" class="radio"><p>목요일</p></div></li>`;
            document.getElementById('selectUl').appendChild(label1);
            label2.innerHTML = `<li class="selectLi"><div><input type="radio" name="radio" class="radio"><p>금요일</p></div></li>`;
            document.getElementById('selectUl').appendChild(label2);
            label3.innerHTML = `<li class="selectLi"><div><input type="radio" name="radio" class="radio"><p>토요일</p></div></li>`;
            document.getElementById('selectUl').appendChild(label3);
            label4.innerHTML = `<li class="selectLi"><div id="lastSelectLi"><input type="radio" name="radio" class="radio"><p>일요일</p></div></li>`;
            document.getElementById('selectUl').appendChild(label4);
            document.getElementById('value').value = 5;
            document.getElementById('selectBarAni').animate([    
                { width: "320px"} 
            ], {duration: 300,
                fill: "forwards", easing: "ease-out"});
                document.getElementById('selectBarPercent').innerText = '70%';
            break;
        case '5':
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `희망하는 레슨 시간대는 언제인가요?`;
            document.getElementsByClassName('selectLi')[0].innerHTML = `<div id="firstSelectLi"><input type="radio" name="radio" class="radio"><p>이른 오전 (9시 이전)</p></div>`;
            document.getElementsByClassName('selectLi')[1].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>오전 (9~12시)</p></div>`;
            document.getElementsByClassName('selectLi')[2].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>오후 (12~3시)</p></div>`;
            document.getElementsByClassName('selectLi')[3].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>늦은 오후 (3~6시)</p></div>`;
            document.getElementsByClassName('selectLi')[4].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>저녁 (6~9시)</p></div>`;
            document.getElementsByClassName('selectLi')[5].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>늦은 저녁 (9시 이후)</p></div>`;
            document.getElementById('value').value = 6;
            document.getElementById('selectBarAni').animate([    
                { width: "384px"} 
            ], {duration: 300,
                fill: "forwards", easing: "ease-out"});
                document.getElementById('selectBarPercent').innerText = '84%';
            break;
        case '6':
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `레슨 희망 지역을 선택해주세요.`;
            document.getElementById('selectUl').style.display = 'none';
            let div = document.createElement('div');
            div.setAttribute('id','selectOptionBox');
                div.innerHTML += `
                <select name="si" class="selectOption" onchange="selectFunction()">
                <option disabled selected>시/도</option>
                <option value="seoul">서울</option>
                <option value="incheon">인천</option>
                <option value="gyeonggi">경기</option>
                </select>
                `;
            console.log(document.getElementsByClassName('selectOption')[0].value);
                switch(document.getElementsByClassName('selectOption')[0].value){
                    case 'seoul':
                        div.innerHTML += `
                        <select name="gu" class="selectOption" disabled onchange="secondSelectFunction()">
                        <option disabled selected>시/군/구</option>
                        <option value="gangnam">강남구</option>
                        <option value="gwanak">관악구</option>
                        <option value="dongjak">동작구</option>
                        <option value="yeongdeungpo">영등포구</option>
                        </select>
                        `;
                        switch(document.getElementsByClassName('selectOption')[1].value){
                            case 'gangnam':
                                div.innerHTML += `
                                <select name="dong" class="selectOption" disabled>
                                <option disabled selected>읍/면/동</option>
                                <option value="gaepo">개포동</option>
                                <option value="nonhyeon">논현동</option>
                                <option value="daechi">대치동</option>
                                <option value="cheongdam">청담동</option>
                                </select>
                                `;
                                break;
                            case 'gwanak':
                                div.innerHTML += `
                                <select name="dong" class="selectOption" disabled>
                                <option disabled selected>읍/면/동</option>
                                <option value="bongcheon">봉천동</option>
                                <option value="sillim">신림동</option>
                                </select>
                                `;
                                break;
                            case 'dongjak':
                                div.innerHTML += `
                                <select name="dong" class="selectOption" disabled>
                                <option disabled selected>읍/면/동</option>
                                <option value="noryangjin">노량진동</option>
                                <option value="daebang">대방동</option>
                                <option value="sadang">사당동</option>
                                <option value="sangdo">상도동</option>
                                </select>
                                `;
                                break;
                            case 'yeongdeungpo':
                                div.innerHTML += `
                                <select name="dong" class="selectOption" disabled>
                                <option disabled selected>읍/면/동</option>
                                <option value="dangsan">당산동</option>
                                <option value="daerim">대림동</option>
                                <option value="singil">신길동</option>
                                <option value="yeouido">여의도동</option>
                                </select>
                                `;
                                break;
                        }
                        break;
                    case 'incheon':
                        div.innerHTML += `
                        <select name="gu" class="selectOption" disabled onchange="secondSelectFunction()">
                        <option disabled selected>시/군/구</option>
                        <option value="michuhol">미추홀구</option>
                        <option value="yeonsu">연수구</option>
                        <option value="namdong">남동구</option>
                        <option value="bupyeong">부평구</option>
                        </select>
                        `;
                        switch(document.getElementsByClassName('selectOption')[1].value){
                            case 'michuhol':
                                div.innerHTML += `
                                <select name="dong" class="selectOption" disabled>
                                <option disabled selected>읍/면/동</option>
                                <option value="soongui">숭의동</option>
                                <option value="dohwa">도화동</option>
                                <option value="juan">주안동</option>
                                <option value="hakik">학익동</option>
                                </select>
                                `;
                                break;
                            case 'yeonsu':
                                div.innerHTML += `
                                <select name="dong" class="selectOption" disabled>
                                <option disabled selected>읍/면/동</option>
                                <option value="dongchun">동춘동</option>
                                <option value="seonhak">선학동</option>
                                <option value="songdo">송도동</option>
                                <option value="cheonghak">청학동</option>
                                </select>
                                `;
                                break;
                            case 'namdong':
                                div.innerHTML += `
                                <select name="dong" class="selectOption" disabled>
                                <option disabled selected>읍/면/동</option>
                                <option value="guwol">구월동</option>
                                <option value="ganseok">간석동</option>
                                <option value="mansu">만수동</option>
                                <option value="namchon">남촌동</option>
                                </select>
                                `;
                                break;
                            case 'bupyeong':
                                div.innerHTML += `
                                <select name="dong" class="selectOption" disabled>
                                <option disabled selected>읍/면/동</option>
                                <option value="galsan">갈산동</option>
                                <option value="samsan">삼산동</option>
                                <option value="bupyeong">부평동</option>
                                <option value="bugae">부개동</option>
                                </select>
                                `;
                                break;
                        }
                        break;
                    case 'gyeonggi':
                        div.innerHTML += `
                        <select name="gu" class="selectOption" disabled onchange="secondSelectFunction()">
                        <option disabled selected>시/군/구</option>
                        <option value="gwacheon">과천시</option>
                        <option value="gunpo">군포시</option>
                        <option value="bucheon">부천시</option>
                        <option value="hwaseong">화성시</option>
                        </select>
                        `;
                        switch(document.getElementsByClassName('selectOption')[1].value){
                            case 'gwacheon':
                                div.innerHTML += `
                                <select name="dong" class="selectOption" disabled>
                                <option disabled selected>읍/면/동</option>
                                <option value="galhyeon">갈현동</option>
                                <option value="munwon">문원동</option>
                                <option value="burim">부림동</option>
                                <option value="jungang">중앙동</option>
                                </select>
                                `;
                                break;
                            case 'gunpo':
                                div.innerHTML += `
                                <select name="dong" class="selectOption" disabled>
                                <option disabled selected>읍/면/동</option>
                                <option value="songbu">송부동</option>
                                <option value="daeya">대야동</option>
                                <option value="suri">수리동</option>
                                <option value="ogeum">오금동</option>
                                </select>
                                `;
                                break;
                            case 'bucheon':
                                div.innerHTML += `
                                <select name="dong" class="selectOption" disabled>
                                <option disabled selected>읍/면/동</option>
                                <option value="simgokbon">심곡본동</option>
                                <option value="jung">중동</option>
                                <option value="sang">상동</option>
                                <option value="sosabon">소사본동</option>
                                </select>
                                `;
                                break;
                            case 'hwaseong':
                                div.innerHTML += `
                                <select name="dong" class="selectOption" disabled>
                                <option disabled selected>읍/면/동</option>
                                <option value="gibae">기배동</option>
                                <option value="banwol">반월동</option>
                                <option value="saesol">새솔동</option>
                                <option value="jinan">진안동</option>
                                </select>
                                `;
                                break;
                        }
                        break;
                }
            document.getElementById('selectUl').before(div);
            document.getElementById('value').value = 7;
            document.getElementById('selectBarAni').animate([    
                { width: "450px"} 
            ], {duration: 300,
                fill: "forwards", easing: "ease-out"});
                document.getElementById('selectBarPercent').innerText = '99%';
            break;
    }
    if(document.getElementById('value').value >=1){
        document.getElementById('prevBtn').removeAttribute("hidden");
    }else{
        console.log("````````````````````````````");
        document.getElementById('prevBtn').setAttribute('hidden', "hidden");
    }
    console.log(`${Number(document.getElementById('value').value)}번째 배열 : `+value[Number(document.getElementById('value').value)-1]);
    console.log('배열의 모든 값 : '+value);
    console.log("nextBtn 함수 끝````````````````````````````");
}
function prevPage(){
    console.log("prevBtn 함수 시작````````````````````````````");
    console.log("hidden value 값 : "+Number(document.getElementById('value').value));
    console.log("hidden value 값 : "+typeof Number(document.getElementById('value').value));
    console.log("ul태그 자식 개수 : "+document.getElementById('selectUl').childElementCount);
    console.log("selectLi의 크기 : "+document.getElementsByClassName('selectLi').length);
    for(let i=0; i<document.getElementsByClassName('selectLi').length; i++){
        console.log(`${i}번째 : `+document.getElementsByClassName('selectLi')[i].childNodes[0].childNodes[0].checked);
        
    }
    if(!!document.getElementById('chooseOption')){
        document.getElementById('chooseOption').remove();
    }
    let label1 = document.createElement('label');
    let label2 = document.createElement('label');
    let label3 = document.createElement('label');
    let label4 = document.createElement('label');

    switch(document.getElementById('value').value){
        case '1': 
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `레슨을 받는 목적이 무엇인가요?`;
            document.getElementsByClassName('selectLi')[0].innerHTML = '<div id="firstSelectLi"><input type="radio" name="radio" class="radio"onclick="etcRedo()"><p>취미/다이어트</p></div>';
            document.getElementsByClassName('selectLi')[1].innerHTML = '<div><input type="radio" name="radio" class="radio"onclick="etcRedo()"><p>오디션 준비</p></div>';
            document.getElementsByClassName('selectLi')[2].innerHTML = '<div><input type="radio" name="radio" class="radio"onclick="etcRedo()"><p>공연/장기자랑 준비</p></div>';
            document.getElementsByClassName('selectLi')[3].innerHTML = '<div><input type="radio" name="radio" class="radio"onclick="etcRedo()"><p>입시 준비</p></div>';
            label1.innerHTML = `<li class="selectLi"><div id="lastSelectLi"><input type="radio" name="radio" class="radio"onclick="etcEvent()" id="etc"><p>기타</p></div></li>`;
            document.getElementById('selectUl').appendChild(label1);
            document.getElementById('value').value = 0;
            break;
        case '2':
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `어떻게 진행하기 원하시나요?`;
            document.getElementsByClassName('selectLi')[0].innerHTML = '<div id="firstSelectLi"><input type="radio" name="radio" class="radio"><p>고수가 있는 곳으로 갈게요.</p></div>';
            document.getElementsByClassName('selectLi')[1].innerHTML = '<div><input type="radio" name="radio" class="radio"><p>제가 있는 곳으로 와주세요.</p></div>';
            document.getElementsByClassName('selectLi')[2].innerHTML = '<div><input type="radio" name="radio" class="radio"><p>온라인/화상 수업 원해요.</p></div>';
            document.getElementsByClassName('selectLi')[3].innerHTML = '<div id="lastSelectLi"><input type="radio" name="radio" class="radio"><p>어떤 방식이든 상관없어요.</p></div>';
            document.getElementsByClassName('selectLi')[5].remove();
            document.getElementsByTagName('label')[5].remove();
            document.getElementsByClassName('selectLi')[4].remove();
            document.getElementsByTagName('label')[4].remove();
            document.getElementById('value').value = 1;
            break;
        case '3':
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `레슨생의 연령대는 어떻게 되나요?`;
            document.getElementsByClassName('selectLi')[0].innerHTML = '<div id="firstSelectLi"><input type="radio" name="radio" class="radio"><p>10대 미만</p></div>';
            document.getElementsByClassName('selectLi')[1].innerHTML = '<div><input type="radio" name="radio" class="radio"><p>10대</p></div>';
            label1.innerHTML = `<li class="selectLi"><div><input type="radio" name="radio" class="radio"><p>20대</p></div></li>`;
            document.getElementById('selectUl').appendChild(label1);
            label2.innerHTML = `<li class="selectLi"><div><input type="radio" name="radio" class="radio"><p>30대</p></div></li>`;
            document.getElementById('selectUl').appendChild(label2);
            label3.innerHTML = `<li class="selectLi"><div><input type="radio" name="radio" class="radio"><p>40대</p></div></li>`;
            document.getElementById('selectUl').appendChild(label3);
            label4.innerHTML = `<li class="selectLi"><div id="lastSelectLi"><input type="radio" name="radio" class="radio"><p>50대 이상</p></div></li>`;
            document.getElementById('selectUl').appendChild(label4);
            document.getElementById('value').value = 2;
            break;
        case '4':
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `레슨생의 성별은 무엇인가요?`;
            document.getElementsByClassName('selectLi')[0].innerHTML = `<div id="firstSelectLi"><input type="radio" name="radio" class="radio"><p>남자</p></div>`;
            document.getElementsByClassName('selectLi')[1].innerHTML = `<div id="lastSelectLi"><input type="radio" name="radio" class="radio"><p>여자</p></div>`;
            document.getElementsByClassName('selectLi')[2].remove();
            document.getElementsByTagName('label')[2].remove();
            document.getElementById('value').value = 3;
            break;
        case '5':
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `선호하는 고수의 성별이 있나요?`;
            document.getElementsByClassName('selectLi')[0].innerHTML = `<div id="firstSelectLi"><input type="radio" name="radio" class="radio"><p>무관</p></div>`;
            document.getElementsByClassName('selectLi')[1].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>남자</p></div>`;
            document.getElementsByClassName('selectLi')[2].innerHTML = `<div id="lastSelectLi"><input type="radio" name="radio" class="radio"><p>여자</p></div>`;
            document.getElementsByClassName('selectLi')[6].remove();
            document.getElementsByTagName('label')[6].remove();
            document.getElementsByClassName('selectLi')[5].remove();
            document.getElementsByTagName('label')[5].remove();
            document.getElementsByClassName('selectLi')[4].remove();
            document.getElementsByTagName('label')[4].remove();
            document.getElementsByClassName('selectLi')[3].remove();
            document.getElementsByTagName('label')[3].remove();
            document.getElementById('value').value = 4;
            break;
        case '6':
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `레슨받기 좋은 요일은 언제인가요?`;
            document.getElementsByClassName('selectLi')[0].innerHTML = `<div id="firstSelectLi"><input type="radio" name="radio" class="radio"><p>월요일</p></div>`;
            document.getElementsByClassName('selectLi')[1].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>화요일</p></div>`;
            document.getElementsByClassName('selectLi')[2].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>수요일</p></div>`;
            document.getElementsByClassName('selectLi')[3].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>목요일</p></div>`;
            document.getElementsByClassName('selectLi')[4].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>금요일</p></div>`;
            document.getElementsByClassName('selectLi')[5].innerHTML = `<div><input type="radio" name="radio" class="radio"><p>토요일</p></div>`;
            document.getElementsByClassName('selectLi')[6].innerHTML = `<div id="lastSelectLi"><input type="radio" name="radio" class="radio"><p>일요일</p></div>`;
            document.getElementById('value').value = 5;
            break;
        case '7':
            document.getElementById('selectMainBox').getElementsByTagName('h2')[0].innerText = `레슨 희망 날짜를 선택해주세요.`;
            document.getElementById('selectUl').removeAttribute('style');
            document.getElementById('selectOptionBox').remove();
            document.getElementById('value').value = 6;
            break;
    }
    if(document.getElementById('value').value ==0){
        console.log("````````````````````````````");
        document.getElementById('prevBtn').setAttribute('hidden', "hidden");
    }
    console.log(`${Number(document.getElementById('value').value)}번째 배열 : `+value[Number(document.getElementById('value').value)-1]);
    console.log('배열의 모든 값 : '+value);
    document.getElementsByClassName('radio')[value[Number(document.getElementById('value').value)]].setAttribute('checked', 'checked');
    if(value[Number(document.getElementById('value').value)] == document.getElementsByClassName('selectLi').length-1){
        console.log(document.getElementById('lastSelectLi').childNodes[0]);
        document.getElementById('lastSelectLi').childNodes[0].click();
    }
    console.log("prevBtn 함수 끝````````````````````````````");
}
function etcRedo(){
    document.getElementsByClassName('selectLi')[4].innerHTML = `<div id="lastSelectLi"><input type="radio" name="radio" class="radio" id="etc" onclick="etcEvent()"><p>기타</p></div>`;
}

function etcEvent(){
        console.log(document.getElementsByClassName("selectLi")[4].childNodes[0].childNodes[0]);
        document.getElementsByClassName('selectLi')[4].innerHTML = `<div id="lastSelectLi"><input type="radio" name="radio" class="radio" onclick="etcEvent()" checked><p>기타</p>
        <input type="text" placeholder="ex. 결혼식 이벤트 준비" id="inputEtc" onfocus="inputEtcEvent()"/></div>`;
        document.getElementsByClassName("selectLi")[4].childNodes[0].style.height = "120px";
}
function inputEtcEvent(){
    console.log('focus 진입');
    document.getElementById('inputEtc').onkeydown = ()=>{
        console.log('키입력 성공');
        console.log('document.querySelector :'+document.querySelector('.radio'));
        if(!!document.getElementById('inputEtcPtag')){
            document.getElementById('inputEtcPtag').remove();
        }
    } 
}
document.getElementById('selectUl').onclick = ()=>{
    if(!!document.getElementById('chooseOption')){
        document.getElementById('chooseOption').remove();
    }
}
function selectFunction(){
    document.getElementsByClassName('selectOption')[1].disabled = false;
}
function secondSelectFunction(){
    document.getElementsByClassName('selectOption')[2].disabled = false;
}