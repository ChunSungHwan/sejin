package com.sejin.website.dto;

import java.util.List;



public class ComplexDto {
	protected int 				no;
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
	
	protected List<ApartmentDto> apartments;

/*
	public ComplexDto() {}
	
	public ComplexDto(
			int no,
			String name,
			String adress,
			int blockTotal,
			int doorTotal,
			int parkTotal,
			int highestTier,
			int lowestTier,
			String heatSystem,
			String heatFual,
			String floorAreaRaction,
			String companyName,
			String moveDate, 
			String completeDate
			) {
		this.no = no;
		this.name = name;
		this.adress = adress;
		this.blockTotal = blockTotal;
		this.doorTotal = doorTotal;
		this.parkTotal = parkTotal;
		this.highestTier = highestTier;
		this.lowestTier = lowestTier;
		this.heatSystem = heatSystem;
		this.heatFuel = heatFual;
		this.floorAreaRation = floorAreaRaction;
		this.companyName = companyName;
		this.moveDate = moveDate;
		this.completeDate = completeDate;
	}

*/	
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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
}
