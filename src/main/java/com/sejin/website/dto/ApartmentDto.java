package com.sejin.website.dto;

import java.sql.Date;
import java.util.List;

public class ApartmentDto {
	protected int no;
	protected String title;
	protected String content;
	protected String buyType;
	protected int salePrice;
	protected int rentDeposit;
	protected int mRentDeposit;
	protected int mRentPrice;
	protected String supplyArea;
	protected String exclusiveArea;
	protected int	block;
	protected int tierTotal;
	protected int tier;
	protected String direction;
	protected String expectDate;
	protected String entranceStruct;
	protected int roomNumber;
	protected int bathNumber;
	protected int livingNumber;
	protected Date createDate;
	protected Date modifyDate;
	protected boolean balcony;
	protected boolean wallpaper;
	protected boolean bathRoom;
	protected boolean ceiling;
	protected boolean floor;
	protected boolean kitchen;
	protected boolean entrance;
	protected boolean shoeRack;
	
	protected int cno;
	protected List<PhotoDto> photos;
	

	/*	
	public ApartmentDto() {}
	
	public ApartmentDto(
			int no, 
			String title,
			String content,
			String buyType,
			int salePrice,
			int rentDeposit,
			int mRentDeposit,
			int mRentPrice,
			String supplyArea,
			String exclusiveArea,
			int	block,
			int tierTotal,
			int tier,
			String direction,
			String expectDate,
			String entranceStruct,
			int roomNumber,
			int bathNumber,
			int livingNumber,
			Date createDate,
			Date modifyDate,
			boolean balcony,
			boolean wallpaper,
			boolean bathRoom,
			boolean ceiling,
			boolean floor,
			boolean kitchen,
			boolean entrance,
			boolean shoeRack
			) {
		this.no = no;
		this.title = title;
		this.content = content;
		this.buyType = buyType;
		this.salePrice = salePrice;
		this.rentDeposit = rentDeposit;
		this.mRentDeposit = mRentDeposit;
		this.mRentPrice = mRentPrice;
		this.supplyArea = supplyArea;
		this.exclusiveArea = exclusiveArea;
		this.block =block;
		this.tierTotal = tierTotal;
		this.tier = tier;
		this.direction = direction;
		this.expectDate = expectDate;
		this.entranceStruct = entranceStruct;
		this.roomNumber = roomNumber;
		this.bathNumber = bathNumber;
		this.livingNumber = livingNumber;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.balcony = balcony;
		this.wallpaper = wallpaper;
		this.bathRoom = bathRoom;
		this.ceiling = ceiling;
		this.floor = floor;
		this.kitchen = kitchen;
		this.entrance = entrance;
		this.shoeRack = shoeRack;
	}
*/
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getBuyType() {
		return buyType;
	}

	public void setBuyType(String buyType) {
		this.buyType = buyType;
	}

	public int getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}

	public int getRentDeposit() {
		return rentDeposit;
	}

	public void setRentDeposit(int rentDeposit) {
		this.rentDeposit = rentDeposit;
	}

	public int getmRentDeposit() {
		return mRentDeposit;
	}

	public void setmRentDeposit(int mRentDeposit) {
		this.mRentDeposit = mRentDeposit;
	}

	public int getmRentPrice() {
		return mRentPrice;
	}

	public void setmRentPrice(int mRentPrice) {
		this.mRentPrice = mRentPrice;
	}

	public String getSupplyArea() {
		return supplyArea;
	}

	public void setSupplyArea(String supplyArea) {
		this.supplyArea = supplyArea;
	}

	public String getExclusiveArea() {
		return exclusiveArea;
	}

	public void setExclusiveArea(String exclusiveArea) {
		this.exclusiveArea = exclusiveArea;
	}

	public int getBlock() {
		return block;
	}

	public void setBlock(int block) {
		this.block = block;
	}

	public int getTierTotal() {
		return tierTotal;
	}

	public void setTierTotal(int tierTotal) {
		this.tierTotal = tierTotal;
	}

	public int getTier() {
		return tier;
	}

	public void setTier(int tier) {
		this.tier = tier;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public String getExpectDate() {
		return expectDate;
	}

	public void setExpectDate(String expectDate) {
		this.expectDate = expectDate;
	}

	public String getEntranceStruct() {
		return entranceStruct;
	}

	public void setEntranceStruct(String entranceStruct) {
		this.entranceStruct = entranceStruct;
	}

	public int getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}

	public int getBathNumber() {
		return bathNumber;
	}

	public void setBathNumber(int bathNumber) {
		this.bathNumber = bathNumber;
	}

	public int getLivingNumber() {
		return livingNumber;
	}

	public void setLivingNumber(int livingNumber) {
		this.livingNumber = livingNumber;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public boolean isBalcony() {
		return balcony;
	}

	public void setBalcony(boolean balcony) {
		this.balcony = balcony;
	}

	public boolean isWallpaper() {
		return wallpaper;
	}

	public void setWallpaper(boolean wallpaper) {
		this.wallpaper = wallpaper;
	}

	public boolean isBathRoom() {
		return bathRoom;
	}

	public void setBathRoom(boolean bathRoom) {
		this.bathRoom = bathRoom;
	}

	public boolean isCeiling() {
		return ceiling;
	}

	public void setCeiling(boolean ceiling) {
		this.ceiling = ceiling;
	}

	public boolean isFloor() {
		return floor;
	}

	public void setFloor(boolean floor) {
		this.floor = floor;
	}

	public boolean isKitchen() {
		return kitchen;
	}

	public void setKitchen(boolean kitchen) {
		this.kitchen = kitchen;
	}

	public boolean isEntrance() {
		return entrance;
	}

	public void setEntrance(boolean entrance) {
		this.entrance = entrance;
	}

	public boolean isShoeRack() {
		return shoeRack;
	}

	public void setShoeRack(boolean shoeRack) {
		this.shoeRack = shoeRack;
	}
	
	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public List<PhotoDto> getPhotos() {
		return photos;
	}

	public void setPhotos(List<PhotoDto> photos) {
		this.photos = photos;
	}
	
}
