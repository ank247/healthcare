


pragma solidity >=0.4.0;


contract patient
       {
            uint256 dateBegin = now; 
            uint256 steps = 0;
            uint256 inputSteps;
            uint256 eth = 0 wei;
            uint256 count = 0;
            uint256 noIncentives = 1;
            // steps = 0;
            // eth = 0 wei;
            // count = 0;
            //noIncentives = 1;
            function inputStep( uint256 step, 
                                uint256 patient_id, 
                                uint256 location, 
                                uint256 age, 
                                uint256 disease, 
                                uint256 gender,
                                uint256 provider_id) public 
                                {
                                    steps+=step;
                                    if(now-dateBegin== 30 days){
                                        inputSteps = steps;
                                        steps=0;
                                        
                                    }
                                    if(noIncentives==0){
                                        if(now-dateBegin <= 30 days){
                                            eth+=0;
                                        }
                                        else{
                                            noIncentives=1;
                                        }
                                    }
                                    else{
                                        if(count==0){
                                            if(now-dateBegin < 8 days && now-dateBegin > 7 days){
                                                if(steps<8000){
                                                    noIncentives=0;
                                                }
                                                else{
                                                    count=1;
                                                }
                                            }
                                        }
                                        else{
                                            if(now-dateBegin==1 weeks){
                                                   
                                            } 
                                            else if(now-dateBegin==30 days){
                                                if(steps>200000){
                                                    eth+=5 wei;
                                                }
                                                else if(steps>400000){
                                                        eth+=10 wei;
                                                }
                                            }
                                            else if(now-dateBegin==60 days){
                                                    if(inputSteps<200000){
                                                       eth-=4 wei;
                                                    }
                                                    dateBegin=now;
                                            }
                                        }     
                                    }
                                }
        }                                       
        
                    
        
             
             
         
         
           
