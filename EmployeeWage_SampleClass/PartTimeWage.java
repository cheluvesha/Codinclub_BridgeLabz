class PartTimeWage{
        public static void main(String args[]){
                int partTime=0;
                int check=(int)(Math.floor(Math.random()*10)%2);
                int salary=0;
                int empRatePerHour=20;
                int empHours;
                if(partTime==check){
                        empHours=4;
                 }
                else{
                        empHours=8;
                }
                salary=empRatePerHour*empHours;
                 System.out.println(salary);
}
}
