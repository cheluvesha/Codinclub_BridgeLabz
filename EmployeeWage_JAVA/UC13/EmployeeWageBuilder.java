package com.stage4.UC13;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class EmployeeWageBuilder implements IComputeWage{
	public static final int isPartTime=0;
	public static final int isFullTime=1;
	private ArrayList<CompanyEmpWage> empList;
	private LinkedList<Integer>dailyWage;
	public EmployeeWageBuilder() {
		empList=new ArrayList<>();
		dailyWage=new LinkedList<>();
	}
	@Override
	public void addCompanyEmpWage(String company, int empRatePerHour, int numOfWorkingDays, int maximumHoursPerMonth) {
		CompanyEmpWage empWage=new CompanyEmpWage(company,empRatePerHour,numOfWorkingDays,maximumHoursPerMonth);
		empList.add(empWage);
	}

	@Override
	public void computeEmpWage() {
		for(int i=0;i<empList.size();i++) {
			empList.get(i).setTotalEmpWage(this.computeEmpWage(empList.get(i)));
			System.out.println(empList.get(i));
		}	
		
	}
	HashMap<String,LinkedList> companyDailyWage=new HashMap<>();
	private  int computeEmpWage(CompanyEmpWage companyEmpWage) {
		int empHours=0, totalEmpHours=0, totalWorkingDays=0;
		 while(totalEmpHours<=companyEmpWage.maximumHoursPerMonth && totalWorkingDays<companyEmpWage.numOfWorkingDays){
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
               totalEmpHours+=empHours;
               totalWorkingDays+=1;
               dailyWage.add(empHours*companyEmpWage.empRatePerHour);
               
               }
		 companyDailyWage.put(companyEmpWage.company, dailyWage);
		 System.out.println("Daily Wage for the "+companyEmpWage.company+" is :"+dailyWage);
		 dailyWage.clear();
		  return (totalEmpHours*companyEmpWage.empRatePerHour);
		 
	}
	
	public static void main(String args[]) {
		EmployeeWageBuilder employeeWageBuilder=new EmployeeWageBuilder();
		employeeWageBuilder.addCompanyEmpWage("Dmart", 15, 21, 80);
		employeeWageBuilder.addCompanyEmpWage("Reliance", 15, 18, 100);
		employeeWageBuilder.computeEmpWage();
	}
	
}
