class WagesTillCondition{
        final static int isPartTime=0;
        final static int isFullTime=1;
public static void main(String args[]){
        int hours=0;
        int days=0;
        int salary;
        int empRatePerHour=20;
        int empHours;
        int totalSalary=0;
        int totalHours=100;
        int totalDays=20;
        while(hours<=totalHours && days<totalDays){
              int check=(int)(Math.floor(Math.random()*10)%2);
                switch(check){
                case isPartTime:
                        empHours=4;
                        break;
                case isFullTime:
                        empHours=8;
                        break;
                default :
                        empHours=0;
                }
                hours+=empHours;
                days+=1;
                salary=empRatePerHour*empHours;
                totalSalary=totalSalary+salary;
  }
                System.out.println(totalSalary);
}
}
