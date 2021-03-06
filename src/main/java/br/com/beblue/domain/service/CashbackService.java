package br.com.beblue.domain.service;

import br.com.beblue.domain.entity.Cashback;
import br.com.beblue.domain.entity.ItemSale;
import br.com.beblue.domain.enumeration.GenreEnum;
import br.com.beblue.domain.repository.CashbackRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.DayOfWeek;
import java.util.Optional;

/**
 * Cashback Service
 *
 * @author Andryev Lemes - 24/02/2019
 */
@Slf4j
@Service
public class CashbackService {

    @Autowired
    private CashbackRepository cashbackRepository;

    public BigDecimal getCashbackValueItemSale(DayOfWeek dayOfWeek, ItemSale itemSale) {
        return getCashbackValue(itemSale, getCashback(dayOfWeek, itemSale.getAlbum().getGenre())).setScale(2, RoundingMode.FLOOR);
    }

    private BigDecimal getCashback(DayOfWeek dayOfWeek, GenreEnum genre) {
        Optional<Cashback> cashback = cashbackRepository.findByDayOfWeekAndGenre(dayOfWeek, genre);

        return cashback.isPresent() ? cashback.get().getCashbackValue() : BigDecimal.ZERO;
    }

    private BigDecimal getCashbackValue(ItemSale itemSale, BigDecimal percentageCashback) {
        return (itemSale.getAlbumValue().multiply(new BigDecimal(itemSale.getAmount())))
                .multiply(percentageCashback).divide(new BigDecimal(100.00))
                .setScale(2, RoundingMode.FLOOR);
    }


}
