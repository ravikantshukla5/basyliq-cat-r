package com.socgen.poc.util;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/**
 * Utility functions on date, time, calendar
 * 
 * @author Arun
 * 
 */
public final class DateUtil {
	/**
	 * First date in the current year
	 * 
	 * @return
	 */
	public static Date getFirstDateOfTheCurrentYear() {
		return getFirstDateOfTheYear(new Date());
	}

	/**
	 * Last date in the current year
	 * 
	 * @return
	 */
	public static Date getLastDateOfTheCurrentYear() {
		return getLastDateOfTheYear(new Date());
	}

	/**
	 * First date in the current year
	 * 
	 * @return
	 */
	public static Date getFirstDateOfTheYear(Date givenDate) {
		GregorianCalendar calendar = new GregorianCalendar();
		calendar.setTime(givenDate);

		calendar.set(calendar.get(Calendar.YEAR), 0, 1, 0, 0, 0);

		return calendar.getTime();
	}

	/**
	 * Last date in the current year
	 * 
	 * @return
	 */
	public static Date getLastDateOfTheYear(Date givenDate) {
		GregorianCalendar calendar = new GregorianCalendar();
		calendar.setTime(givenDate);

		calendar.set(calendar.get(Calendar.YEAR), 11, 31, 23, 59, 59);

		return calendar.getTime();
	}

	public static void main(String[] args) {
		System.out.println(getFirstDateOfTheCurrentYear());
		System.out.println(getLastDateOfTheCurrentYear());
	}

	/**
	 * Checks if the current date is in 
	 * @param holidayDate
	 * @return
	 */
	public static boolean isDateInCurrentYear(Date holidayDate) {
		Date firstDate = getFirstDateOfTheCurrentYear();
		Date lastDate = getLastDateOfTheCurrentYear();
		if ((holidayDate.compareTo(firstDate) >= 0)
				&& (holidayDate.compareTo(lastDate) <= 0)) {
			return true;
		} else
			return false;
	}
}
