class Wage{
        final int isPartTime=0;
        final int isFullTime=1;
 	final int empRatePerHour=20;
	final int totalDays=20;
	final int totalHours=100;
public void calculate(){
        int hours=0;
        int days=0;
        int salary=0;
        int empHours;
        int totalSalary=0;
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
public class WagesTillCondition{
public static void main(String args[]){
	Wage wage=new Wage();
	wage.calculate();
}
}
