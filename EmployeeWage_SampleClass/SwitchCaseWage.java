class SwitchCaseWage{
        final static int isPartTime=0;
        final static int isFullTime=1;
        public static void main(String args[]){
                int check=(int)(Math.floor(Math.random()*10)%2);
                int salary=0;
                int empRatePerHour=20;
                int empHours;
                switch(check){
                case isPartTime :
                        empHours=4;
                        break;
                case isFullTime :
                        empHours=8;
                        break;
                default :
                        empHours=0;
                }
                salary=empRatePerHour*empHours;
                 System.out.println(salary);
}
}
