# To download data samples from "alien.py" (ALICE server), you can use the cp.C and cp.sh code.
# If you want to download, please follow the usage for under text.

download 를 하기 위해서 아래의 step을 따라주세요!

1. alien.py의 data sample 위치를 확인한다.
   - alien.py 접속을 하면 본인의 alice server directory로 저절로 이동되게 됩니다.
     <img width="381" alt="image" src="https://github.com/user-attachments/assets/8edcf626-b5a7-4a7f-b12f-b481906cac48">

   - 이후, 본인이 다운로드 받고 싶은 data sample의 위치를 찾습니다.
     data sample의 경우, /alice/data/[year]/[period]/[runnumber]/ ... 의 형식으로 되어있고,
     monte-calro sample의 경우, /alice/sim/[year]/[period]/[runnumber]/ ... 의 형식으로 되어있습니다.

     * data sample, 2024 LHC24aa case :
       <img width="373" alt="image" src="https://github.com/user-attachments/assets/d555e42f-9e1a-4962-86d7-b81ff97cb9af">

     * mc sample, 2024 LHC24j1 case :
       <img width="370" alt="image" src="https://github.com/user-attachments/assets/98d23246-e2da-4f00-be3e-b3b0a4b2f403">
       
  - sample의 위치는 runnumber 까지 확인해야 합니다.

2. cp.C와 cp.sh를 다운로드 받을 direcotry에 같이 놓는다.

3. "chmod +x cp.sh" command 를 통해 cp.sh를 실행 모드로 변경한다.

4. "cp.sh [data sample path]" command 를 통해 다운로드를 진행한다.
   - 이렇게 명령어를 입력 하면, 같은 directory 안에 "list.txt"가 생성되며, 위 입력한 data sample이 있는 경로 아래에 있는 "AO2D.root" file을 찾아서 download를 시작합니다.
   - "list.txt" 파일은 해당 AO2D.root가 있는 path를 보여줍니다. 어떤 경로의 AO2D.root 가 downlaod되는지 확인 할 수 있습니다.

  * 만약에, 원치 않는 경로의 AO2D.root가 list.txt에 포함되어 있다면?
    - list.txt의 해당 경로를 지우고, "root cp.C" command 를 입력합니다.
 
5. download 된 파일들은 해당 directory의 AOD파일에 1,2,3... 과 같은 하위 directory를 생성하며 각각 저장됩니다.
  - 저장된 AO2D.root 파일은 o2-aod-merger를 통해 merge 할 수 있습니다.

  * alien.py가 접속이 안되어요!
    - O2Physics 환경에 로드가 되어있는지 확인합니다.
    - "alien-token-init" 명령어를 통해 token 을 초기화 해 줍니다.
    - 본인의 인증서가 만료되지 않았나 확인합니다.
    - 이래도 안되면 비상입니다. 전문가에게 조언을 구하세요.
   
    
    
      
