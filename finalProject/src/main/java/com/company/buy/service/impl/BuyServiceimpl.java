package com.company.buy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.buy.service.BuyService;
import com.company.buy.service.BuyVO;

@Service
public class BuyServiceimpl implements BuyService{

	@Autowired BuyMapper buyMapper;
	
	//구매내역 상세리스트 조회
	@Override
	public List<BuyVO> getSearchBuy(BuyVO vo) {
		return buyMapper.getSearchBuy(vo);
	}
	
	//구매 한건 삭제
	@Override
	public int deleteBuy(BuyVO vo) {
		return buyMapper.deleteBuy(vo);
	}
	
	//뷰 단건 조회
	@Override
	public BuyVO getViewBuy(BuyVO vo) {
		return buyMapper.getViewBuy(vo);
	}
	
	//구매상세정보 추가
	@Override
	public int insertBuy2(BuyVO vo) {
		return buyMapper.insertBuy2(vo);
	}
	
	//쇼핑몰구매내역 단건조회 for 구매평작성
	@Override
	public List<BuyVO> getBuy(BuyVO vo) {
		return buyMapper.getBuy(vo);
	}

	@Override
	public int insertReview3(BuyVO vo) {
		return buyMapper.insertReview3(vo);
	}
	

	@Override
	public int insertCartBuy(List<BuyVO> list) {
		return buyMapper.insertCartBuy(list);
	}	

	
}
