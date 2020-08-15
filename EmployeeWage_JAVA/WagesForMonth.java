class Wage{
        final static int isPartTime=0;
        final static int isFullTime=1;
	int salary=0;
        final int empRatePerHour=20;
        int empHours;
        final int numberOfWorkingDays=20;
        int totalSalary=0;
public void calculate(){
                for(int day=1;day<=numberOfWorkingDays;day++){
                int check=(int)(Math.floor(Math.random()*10)%2);
                switch(check){
                case isPartTime:
                        empHours=4;
                        break;
                case isFullTime :
                        empHours=8;
                        break;
                default :
                        empHours=0;
                }
                salary=empRatePerHour*empHours;
                totalSalary+=salary;
                 }
                System.out.println("Total wage for 20 days: "+totalSalary);
}
}

public class WagesForMonth{
public static void main(String args[]){
	Wage wage=new Wage();
	wage.calculate();
}
}
