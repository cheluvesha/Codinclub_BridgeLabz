package com.stage4.UC14;

public interface IComputeWage {
	public void addCompanyEmpWage(String company,int empRatePerHour,int numOfWorkingDays,int maximumHoursPerMonth);
	public void computeEmpWage();
	public int getTotalWage(String company);
}
