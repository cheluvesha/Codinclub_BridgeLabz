class SwitchCaseWage{
        final static int isPartTime=0;
        final static int isFullTime=1;
	int salary=0;
        int empRatePerHour=20;
        int empHours;
public void calculate(){
        int check=(int)(Math.floor(Math.random()*10)%2);
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

public class WageUsingSwitch{
public static void main(String aargs[]){
	SwitchCaseWage wage=new SwitchCaseWage();
	wage.calculate();
}
}
