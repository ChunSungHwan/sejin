package com.sejin.website.dto;

import java.util.List;

public class ComplexDto {
	protected int 				cno;
	protected String			name;
	protected String  		adress;
	protected int					blockTotal;
	protected int					doorTotal;
	protected int					parkTotal;
	protected int					highestTier;
	protected int					lowestTier;
	protected String			heatSystem;
	protected String			heatFuel;
	protected String			floorAreaRation;
	protected String			companyName;
	protected String			moveDate;
	protected String			completeDate;
	
	protected String 			clatitude;
	protected String 			clongitude;
	
	protected List<ApartmentDto> apartments;

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public int getBlockTotal() {
		return blockTotal;
	}

	public void setBlockTotal(int blockTotal) {
		this.blockTotal = blockTotal;
	}

	public int getDoorTotal() {
		return doorTotal;
	}

	public void setDoorTotal(int doorTotal) {
		this.doorTotal = doorTotal;
	}

	public int getParkTotal() {
		return parkTotal;
	}

	public void setParkTotal(int parkTotal) {
		this.parkTotal = parkTotal;
	}

	public int getHighestTier() {
		return highestTier;
	}

	public void setHighestTier(int highestTier) {
		this.highestTier = highestTier;
	}

	public int getLowestTier() {
		return lowestTier;
	}

	public void setLowestTier(int lowestTier) {
		this.lowestTier = lowestTier;
	}

	public String getHeatSystem() {
		return heatSystem;
	}

	public void setHeatSystem(String heatSystem) {
		this.heatSystem = heatSystem;
	}

	public String getHeatFuel() {
		return heatFuel;
	}

	public void setHeatFuel(String heatFuel) {
		this.heatFuel = heatFuel;
	}

	public String getFloorAreaRation() {
		return floorAreaRation;
	}

	public void setFloorAreaRation(String floorAreaRation) {
		this.floorAreaRation = floorAreaRation;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getMoveDate() {
		return moveDate;
	}

	public void setMoveDate(String moveDate) {
		this.moveDate = moveDate;
	}

	public String getCompleteDate() {
		return completeDate;
	}

	public void setCompleteDate(String completeDate) {
		this.completeDate = completeDate;
	}
	
	public List<ApartmentDto> getApartments() {
		return apartments;
	}

	public void setApartments(List<ApartmentDto> apartments) {
		this.apartments = apartments;
	}

	public String getClatitude() {
		return clatitude;
	}

	public void setClatitude(String clatitude) {
		this.clatitude = clatitude;
	}

	public String getClongitude() {
		return clongitude;
	}

	public void setClongitude(String clongitude) {
		this.clongitude = clongitude;
	}
	
}
