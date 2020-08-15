
class DailyEmpWage{
        public static void main(String args[]){
                int present=1;
                int check=(int)(Math.floor(Math.random()*10)%2);
                int salary=0;
                int empRatePerHour=20;
                int empHours=8;
                if(present==check){
                        salary=empRatePerHour*empHours;
                        System.out.println(salary);
                }
                else{
                        System.out.println(salary);
                }
}
}
