#Import the Active Directory Module
Import-Module ActiveDirectory
#define the AD Containers

$Loaner ='OU=Loaner Laptops,OU=Workstations,OU=Information Technology,OU=Operations,OU=National,DC=alz-chicago,DC=alz,DC=org'
$6 ='OU=Workstations,OU=6 Desert Southwest,OU=Arizona_NV,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$12="OU=Workstations,OU=12 California Southland,OU=California,OU=Chapters,DC=alz-chicago,DC=alz,DC=org"
$17='OU=Workstations,OU=17 Orange County,OU=California,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$19='OU=Workstations,OU=19 San Diego,OU=California,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$20='OU=Workstations,OU=20 Northern California and Northern Nevada,OU=California_NV,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$21="OU=Workstations,OU=21 California Central,OU=California,OU=Chapters,DC=alz-chicago,DC=alz,DC=org"
$24='OU=Workstations,OU=24 Colorado,OU=Colorado,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$28='OU=Workstations,OU=28 Connecticut,OU=Connecticut,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$37='OU=Workstations,OU=37 Central and North Florida,OU=Florida,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$38='OU=Workstations,OU=38 Florida Gulf Coast,OU=Florida,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$36='OU=Workstations,OU=36 South Florida,OU=Florida,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$33='OU=Workstations,OU=33 Southeast Florida,OU=Florida,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$46='OU=Workstations,OU=46 Georgia,OU=Georgia,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$53='OU=Workstations,OU=53 Aloha,OU=Hawaii,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$58='OU=Workstations,OU=58 Central Illinois,OU=Illinois,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$59='OU=Workstations,OU=59 Greater Illinois,OU=Illinois,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$67='OU=Workstations,OU=67 Greater Indiana,OU=Indiana,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$73='OU=Workstations,OU=73 East Central Iowa,OU=Iowa,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$232='OU=Workstations,OU=232 Greater Iowa,OU=Iowa_Il,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$100='OU=Workstations,OU=100 Heart of America,OU=Kansas_MO,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$78='OU=Workstations,OU=78 Greater Kentucky and Southern Indiana,OU=Kentucky_IN,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$81='OU=Workstations,OU=81 Louisiana,OU=Louisiana,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$82='OU=Workstations,OU=82 Maine,OU=Maine,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$83='OU=Workstations,OU=83 Greater Maryland,OU=Maryland,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$87='OU=Workstations,OU=87 Massachusetts,OU=Massachusetts,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$90='OU=Workstations,OU=90 Greater Michigan,OU=Michigan,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$97='OU=Workstations,OU=97 Michigan Great Lakes,OU=Michigan,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$99='OU=Workstations,OU=99 Minnesota-North Dakota,OU=Minnesota_ND_SD,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$205='OU=Workstations,OU=205 Mississippi,OU=Mississippi,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$101='OU=Workstations,OU=101 Greater Missouri,OU=Missouri,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$104='OU=Workstations,OU=104 St.Louis,OU=Missouri_IL,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$105='OU=Workstations,OU=105 Montana,OU=Montana,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$113='OU=Workstations,OU=113 Greater New Jersey,OU=New Jersey,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$115='OU=Workstations,OU=115 New Mexico,OU=New Mexico,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$117='OU=Workstations,OU=117 Central New York,OU=New York,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$118='OU=Workstations,OU=118 Hudson Valley,OU=New York,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$120='OU=Workstations,OU=120 Long Island,OU=New York,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$121='OU=Workstations,OU=121 New York City,OU=New York,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$116='OU=Workstations,OU=116 Northeastern New York,OU=New York,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$123='OU=Workstations,OU=123 Rochester and Finger Lakes Region,OU=New York,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$128='OU=Workstations,OU=128 Western New York,OU=New York,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$129='OU=Workstations,OU=129 Eastern North Carolina,OU=North Carolina,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$130='OU=Workstations,OU=130 Western Carolina,OU=North Carolina,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$140='OU=Workstations,OU=140 Central Ohio,OU=Ohio,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$139='OU=Workstations,OU=139 Cleveland Area,OU=Ohio,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$143='OU=Workstations,OU=143 Miami Valley,OU=Ohio,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$144='OU=Workstations,OU=144 Northwest Ohio,OU=Ohio,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$138='OU=Workstations,OU=138 Greater Cincinnati,OU=Ohio_IN_KY,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$135='OU=Workstations,OU=135 Greater East Ohio Area,OU=Ohio_PA,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$147='OU=Workstations,OU=147 Oklahoma,OU=Oklahoma,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$148='OU=Workstations,OU=148 Oregon,OU=Oregon_ID_WA,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$157='OU=Workstations,OU=157 Greater Pennsylvania,OU=Pennsylvania,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$156='OU=Workstations,OU=156 Delaware Valley,OU=Pennsylvania_DE_NJ,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$159='OU=Workstations,OU=159 Rhode Island,OU=Rhode Island,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$161='OU=Workstations,OU=161 South Carolina,OU=South Carolina,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$164='OU=Workstations,OU=164 Eastern Tennessee,OU=Tennessee,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$208='OU=Workstations,OU=208 Mid South,OU=Tennessee_AL_AR,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$169='OU=Workstations,OU=169 Capital of Texas,OU=Texas,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$172='OU=Workstations,OU=172 Greater Dallas,OU=Texas,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$174='OU=Workstations,OU=174 Houston_Southeast Texas,OU=Texas,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$177='OU=Workstations,OU=177 North Central Texas,OU=Texas,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$173='OU=Workstations,OU=173 West Texas Service Area,OU=Texas,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$178='OU=Workstations,OU=178 Utah,OU=Utah,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$179='OU=Workstations,OU=179 Vermont_New Hampshire,OU=Vermont_NH,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$181='OU=Workstations,OU=181 Central_Western Virginia,OU=Virginia,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$185='OU=Workstations,OU=185 Greater Richmond,OU=Virginia,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$182='OU=Workstations,OU=182 Southeastern Virginia,OU=Virginia,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$184='OU=Workstations,OU=184 National Capital Area,OU=Virginia_MD,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$190='OU=Workstations,OU=190 Washington State,OU=Washington,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$233='OU=Workstations,OU=233 Inland Northwest,OU=Washington_ID,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$191='OU=Workstations,OU=191 West Virginia,OU=West Virginia_OH,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$214='OU=Workstations,OU=214 South Central Wisconsin,OU=Wisconsin,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$195='OU=Workstations,OU=195 Southeastern Wisconsin,OU=Wisconsin,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$194='OU=Workstations,OU=194 Greater Wisconsin,OU=Wisconsin_MN,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$162='OU=Workstations,OU=162 South Dakota,OU=Minnesota_ND_SD,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$75='OU=Workstations,OU=75 Central and Western Kansas,OU=Kansas_MO,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$54='OU=Workstations,OU=54 Greater Idaho,OU=Idaho,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$201='OU=Workstations,OU=201 San Antonio and South Texas Service Area,OU=Texas,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$412='OU=Workstations,OU=412 Arkansas,OU=Arkansas,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$109='OU=Workstations,OU=109 Nebraska,OU=Nebraska,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$417='OU=Workstations,OU=417 Wyoming,OU=Wyoming,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
$423='OU=Workstations,OU=423-Alabama-Florida Panhandle,OU=Alabama_FL,OU=Chapters,DC=alz-chicago,DC=alz,DC=org'
#Defining Source Container (Domain)
$Domain = Get-ADDomain
$SourcePath = $Domain.ComputersContainer
#Get Computers from default container
$Computers = Get-ADComputer -Filter * -SearchBase $SourcePath
#Processing computers in the default CN=Computers OU
foreach ($Computer in $Computers) {
    $prefix = $computer.Name
    $prefix = $prefix.Substring(2,3)
    if ($prefix.StartsWith("LOANER"))
		{
		Move-ADObject -Identity $Computer -TargetPath $Loaner
		echo "Moved $Computer.Name from Computers OU to Loaners OU"}
	elseif($prefix.StartsWith("012")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $12
        echo "Moved $Computer.Name from Computers OU to 012 OU"
        } 
    elseif ($prefix.StartsWith("006")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $6
        echo "Moved $Computer.Name from Computers OU to 006 OU"
        }	
	elseif ($prefix.StartsWith("017")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $17
        echo "Moved $Computer.Name from Computers OU to 017 OU"
        }
	elseif ($prefix.StartsWith("019")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $19
        echo "Moved $Computer.Name from Computers OU to 019 OU"
        }
    elseif ($prefix.StartsWith("020")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $20
        echo "Moved $Computer.Name from Computers OU to 020 OU"
        }
    elseif ($prefix.StartsWith("021")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $21
        echo "Moved $Computer.Name from Computers OU to 021 OU"
        }
	elseif ($prefix.StartsWith("024")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $24
        echo "Moved $Computer.Name from Computers OU to 024 OU"
        }
    elseif ($prefix.StartsWith("028")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $28
        echo "Moved $Computer.Name from Computers OU to 028 OU"
        }
    elseif ($prefix.StartsWith("037")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $37
        echo "Moved $Computer.Name from Computers OU to 037 OU"
        }
    elseif ($prefix.StartsWith("038")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $38
        echo "Moved $Computer.Name from Computers OU to 038 OU"
        }
    elseif ($prefix.StartsWith("036")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $36
        echo "Moved $Computer.Name from Computers OU to 036 OU"
        }		
    elseif ($prefix.StartsWith("033")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $33
        echo "Moved $Computer.Name from Computers OU to 033 OU"
        }
    elseif ($prefix.StartsWith("046"))
        {
        Move-ADObject -Identity $Computer -TargetPath $46
        echo "Moved $Computer.Name from Comuters OU to 046 OU"
        }
    elseif ($prefix.StartsWith("053")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $53
        echo "Moved $Computer.Name from Computers OU to 053 OU"
        }
    elseif ($prefix.StartsWith("058")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $58
        echo "Moved $Computer.Name from Computers OU to 058 OU"
        }
    elseif ($prefix.StartsWith("059")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $59
        echo "Moved $Computer.Name from Computers OU to 059 OU"
        }
    elseif ($prefix.StartsWith("067")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $67
        echo "Moved $Computer.Name from Computers OU to 067 OU"
        }
	elseif ($prefix.StartsWith("073")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $73
        echo "Moved $Computer.Name from Computers OU to 073 OU"
        }
    elseif ($prefix.StartsWith("232")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $232
        echo "Moved $Computer.Name from Computers OU to 232 OU"
        }
    elseif ($prefix.StartsWith("100")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $100
        echo "Moved $Computer.Name from Computers OU to 100 OU"
        }
    elseif ($prefix.StartsWith("078")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $78
        echo "Moved $Computer.Name from Computers OU to 078 OU"
        }
    elseif ($prefix.StartsWith("081")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $81
        echo "Moved $Computer.Name from Computers OU to 081 OU"
        }
    elseif ($prefix.StartsWith("082")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $82
        echo "Moved $Computer.Name from Computers OU to 082 OU"
        }
    elseif ($prefix.StartsWith("083")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $83
        echo "Moved $Computer.Name from Computers OU to 083 OU"
        }
    elseif ($prefix.StartsWith("087")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $87
        echo "Moved $Computer.Name from Computers OU to 087 OU"
        }
    elseif ($prefix.StartsWith("090")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $90
        echo "Moved $Computer.Name from Computers OU to 090 OU"
        }
    elseif ($prefix.StartsWith("097")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $97
        echo "Moved $Computer.Name from Computers OU to 097 OU"
        }
    elseif ($prefix.StartsWith("099")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $99
        echo "Moved $Computer.Name from Computers OU to 099 OU"
        }
    elseif ($prefix.StartsWith("205")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $205
        echo "Moved $Computer.Name from Computers OU to 205 OU"
        }
    elseif ($prefix.StartsWith("101")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $101
        echo "Moved $Computer.Name from Computers OU to 101 OU"
        }
    elseif ($prefix.StartsWith("104")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $104
        echo "Moved $Computer.Name from Computers OU to 104 OU"
        }
    elseif ($prefix.StartsWith("105")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $105
        echo "Moved $Computer.Name from Computers OU to 105 OU"
        }
    elseif ($prefix.StartsWith("113")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $113
        echo "Moved $Computer.Name from Computers OU to 113 OU"
        }
    elseif ($prefix.StartsWith("115")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $115
        echo "Moved $Computer.Name from Computers OU to 115 OU"
        }
    elseif ($prefix.StartsWith("117")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $117
        echo "Moved $Computer.Name from Computers OU to 117 OU"
        }
    elseif ($prefix.StartsWith("118")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $118
        echo "Moved $Computer.Name from Computers OU to 118 OU"
        }
    elseif ($prefix.StartsWith("120")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $120
        echo "Moved $Computer.Name from Computers OU to 120 OU"
        }
    elseif ($prefix.StartsWith("121")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $121
        echo "Moved $Computer.Name from Computers OU to 121 OU"
        }
    elseif ($prefix.StartsWith("116")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $116
        echo "Moved $Computer.Name from Computers OU to 116 OU"
        }
    elseif ($prefix.StartsWith("123")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $123
        echo "Moved $Computer.Name from Computers OU to 123 OU"
        }
    elseif ($prefix.StartsWith("128")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $128
        echo "Moved $Computer.Name from Computers OU to 128 OU"
        }
    elseif ($prefix.StartsWith("129")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $129
        echo "Moved $Computer.Name from Computers OU to 129 OU"
        }
    elseif ($prefix.StartsWith("130")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $130
        echo "Moved $Computer.Name from Computers OU to 130 OU"
        }
    elseif ($prefix.StartsWith("140")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $140
        echo "Moved $Computer.Name from Computers OU to 140 OU"
        }
    elseif ($prefix.StartsWith("139")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $139
        echo "Moved $Computer.Name from Computers OU to 139 OU"
        }
    elseif ($prefix.StartsWith("143")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $143
        echo "Moved $Computer.Name from Computers OU to 143 OU"
        }
    elseif ($prefix.StartsWith("144")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $144
        echo "Moved $Computer.Name from Computers OU to 144 OU"
        }
    elseif ($prefix.StartsWith("138")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $138
        echo "Moved $Computer.Name from Computers OU to 138 OU"
        }
    elseif ($prefix.StartsWith("135")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $135
        echo "Moved $Computer.Name from Computers OU to 135 OU"
        }
    elseif ($prefix.StartsWith("147")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $147
        echo "Moved $Computer.Name from Computers OU to 147 OU"
        }
    elseif ($prefix.StartsWith("148")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $148
        echo "Moved $Computer.Name from Computers OU to 148 OU"
        }
    elseif ($prefix.StartsWith("157")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $157
        echo "Moved $Computer.Name from Computers OU to 157 OU"
        }
    elseif ($prefix.StartsWith("156")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $156
        echo "Moved $Computer.Name from Computers OU to 156 OU"
        }
    elseif ($prefix.StartsWith("159")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $159
        echo "Moved $Computer.Name from Computers OU to 159 OU"
        }
    elseif ($prefix.StartsWith("161")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $161
        echo "Moved $Computer.Name from Computers OU to 161 OU"
        }
    elseif ($prefix.StartsWith("164")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $164
        echo "Moved $Computer.Name from Computers OU to 164 OU"
        }
    elseif ($prefix.StartsWith("208")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $208
        echo "Moved $Computer.Name from Computers OU to 208 OU"
        }
    elseif ($prefix.StartsWith("169")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $169
        echo "Moved $Computer.Name from Computers OU to 169 OU"
        }
    elseif ($prefix.StartsWith("172")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $172
        echo "Moved $Computer.Name from Computers OU to 172 OU"
        }
    elseif ($prefix.StartsWith("174")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $174
        echo "Moved $Computer.Name from Computers OU to 174 OU"
        }
    elseif ($prefix.StartsWith("177")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $177
        echo "Moved $Computer.Name from Computers OU to 177 OU"
        }
    elseif ($prefix.StartsWith("173")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $173
        echo "Moved $Computer.Name from Computers OU to 173 OU"
        }
    elseif ($prefix.StartsWith("178")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $178
        echo "Moved $Computer.Name from Computers OU to 178 OU"
        }
    elseif ($prefix.StartsWith("179")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $179
        echo "Moved $Computer.Name from Computers OU to 179 OU"
        }
    elseif ($prefix.StartsWith("181")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $181
        echo "Moved $Computer.Name from Computers OU to 181 OU"
        }
    elseif ($prefix.StartsWith("185")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $185
        echo "Moved $Computer.Name from Computers OU to 185 OU"
        }
    elseif ($prefix.StartsWith("182")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $182
        echo "Moved $Computer.Name from Computers OU to 182 OU"
        }
    elseif ($prefix.StartsWith("184")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $184
        echo "Moved $Computer.Name from Computers OU to 184 OU"
        }
    elseif ($prefix.StartsWith("190")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $190
        echo "Moved $Computer.Name from Computers OU to 190 OU"
        }
    elseif ($prefix.StartsWith("233")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $233
        echo "Moved $Computer.Name from Computers OU to 233 OU"
        }
    elseif ($prefix.StartsWith("191")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $191
        echo "Moved $Computer.Name from Computers OU to 191 OU"
        }
    elseif ($prefix.StartsWith("214")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $214
        echo "Moved $Computer.Name from Computers OU to 214 OU"
        }
    elseif ($prefix.StartsWith("195")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $195
        echo "Moved $Computer.Name from Computers OU to 195 OU"
        }
    elseif ($prefix.StartsWith("194")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $194
        echo "Moved $Computer.Name from Computers OU to 194 OU"
        }
    elseif ($prefix.StartsWith("162")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $162
        echo "Moved $Computer.Name from Computers OU to 162 OU"
        }
    elseif ($prefix.StartsWith("075")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $075
        echo "Moved $Computer.Name from Computers OU to 075 OU"
        }
    elseif ($prefix.StartsWith("054")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $54
        echo "Moved $Computer.Name from Computers OU to 054 OU"
        }
    elseif ($prefix.StartsWith("201")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $201
        echo "Moved $Computer.Name from Computers OU to 201 OU"
        }
    elseif ($prefix.StartsWith("412")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $412
        echo "Moved $Computer.Name from Computers OU to 412 OU"
        }
    elseif ($prefix.StartsWith("109")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $109
        echo "Moved $Computer.Name from Computers OU to 109 OU"
        }
    elseif ($prefix.StartsWith("417")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $417
        echo "Moved $Computer.Name from Computers OU to 417 OU"
        }
    elseif ($prefix.StartsWith("423")) 
        {
        Move-ADObject -Identity $Computer -TargetPath $423
        echo "Moved $Computer.Name from Computers OU to 423 OU"
        }
    else {"$Computer.Name is named improperly and was unable to be moved to the correct OU' | Out-File "\\fileout Computers to OU Script Errors.txt' -Append
	} 