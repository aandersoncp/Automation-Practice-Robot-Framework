*** Variables ***

${RADIO_BUTTON_MR}       //label[@for='id_gender1'][contains(.,'Mr.')]
${PASSWORD}              //input[contains(@type,'password')]
${SELECT_DAY}            //select[contains(@data-qa,'days')]
${DAY}                   //option[@value='12'][contains(.,'12')]
${SELECT_MONTH}          //select[contains(@data-qa,'months')]
${MONTH}                 //option[@value='7'][contains(.,'July')]
${SELECT_YEAR}           //select[contains(@data-qa,'years')]
${YEAR}                  //option[@value='2000'][contains(.,'2000')]
${CHECKBOX_NEWSLETTER}   //input[contains(@name,'newsletter')]
${CHECKBOX_RECEIVE}      //input[contains(@name,'optin')]
${FIRST_NAME}            //input[contains(@data-qa,'first_name')]
${LAST_NAME}             //input[contains(@data-qa,'last_name')]
${COMPANY}               //input[contains(@data-qa,'company')]
${ADDRESS}               //input[@data-qa='address']
${SELECT_COUNTRY}        //select[contains(@data-qa,'country')]
${COUNTRY}               //option[@value='Canada'][contains(.,'Canada')]         
${STATE}                //input[contains(@data-qa,'state')]
${CITY}                  //input[contains(@data-qa,'city')]
${ZIPCODE}               //input[contains(@data-qa,'zipcode')]
${MOBILE_NUMER}          //input[@type='text'][contains(@id,'number')] 
${BOTAO_CREATE_ACCOUNT}  //button[@type='submit'][contains(.,'Create Account')]
${ACCOUNT_CREATED}       //b[contains(.,'Account Created!')]
${BOTAO_CONTINUE}        //a[contains(@data-qa,'continue-button')]
${NOME}                  nome_teste


${URL_BASE}         http://automationexercise.com
${BOTAO_HOME}        //a[contains(.,'Home')]


${BOTAO_HOME}            //a[contains(.,'Home')]
${BOTAO_SIGNUP_LOGIN}    //a[contains(.,'Signup / Login')]
${TITULO_PAGINA_LOGIN}   //h2[contains(.,'Login to your account')] 
${DELETE_BUTTON}         //a[contains(.,'Delete Account')]


${LOGIN_NOME}          //input[contains(@type,'text')]
${LOGIN_EMAIL}         //input[contains(@data-qa,'signup-email')]
${BOTAO_SIGNUP}        //button[@type='submit'][contains(.,'Signup')]
${TITULO_ENTER_ACCOUNT_INFORMATION}    //b[contains(.,'Enter Account Information')]