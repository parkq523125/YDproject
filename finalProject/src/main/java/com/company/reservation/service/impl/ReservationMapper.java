package com.company.reservation.service.impl;

import java.util.List;

import com.company.reservation.service.ReservationVO;

public interface ReservationMapper {
	public ReservationVO getReservation(ReservationVO vo);

	public List<ReservationVO> getSearchReservation(ReservationVO vo);

	public int updateReservation(ReservationVO vo);

	public int deleteReservation(ReservationVO vo);

	public ReservationVO getViewReservation(ReservationVO vo);

	// 결제용 insert
	public int insertPayReservation(ReservationVO vo);
}
