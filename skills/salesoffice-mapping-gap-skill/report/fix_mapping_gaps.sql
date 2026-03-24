-- =============================================================
-- SalesOffice Mapping Gap Fix - Auto-Generated
-- Generated: 2026-03-18T08:37:50.129838+00:00
-- Type A gaps only (BoardId already exists for hotel)
-- =============================================================

BEGIN TRANSACTION;

-- Grand Hotel Rimini | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1, 1, 2, '7073', 'SPR');
END

-- Grand Hotel Rimini | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1, 1, 4, '7073', 'DLX');
END

-- Grand Hotel Rimini | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1, 1, 12, '7073', 'Suite');
END

-- Grand Hotel Rimini | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1, 2, 2, '7074', 'SPR');
END

-- Grand Hotel Rimini | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1, 2, 4, '7074', 'DLX');
END

-- Grand Hotel Rimini | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1, 2, 12, '7074', 'Suite');
END

-- Holiday Inn London - Bloomsbury | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=250 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (250, 1, 2, '7163', 'SPR');
END

-- Holiday Inn London - Bloomsbury | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=250 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (250, 1, 4, '7163', 'DLX');
END

-- Holiday Inn London - Bloomsbury | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=250 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (250, 1, 12, '7163', 'Suite');
END

-- Holiday Inn London - Bloomsbury | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=250 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (250, 2, 2, '7164', 'SPR');
END

-- Holiday Inn London - Bloomsbury | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=250 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (250, 2, 4, '7164', 'DLX');
END

-- Holiday Inn London - Bloomsbury | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=250 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (250, 2, 12, '7164', 'Suite');
END

-- Strand Palace Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=571 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (571, 1, 4, '7171', 'DLX');
END

-- Strand Palace Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=571 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (571, 1, 12, '7171', 'Suite');
END

-- Strand Palace Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=571 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (571, 2, 4, '7172', 'DLX');
END

-- Strand Palace Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=571 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (571, 2, 12, '7172', 'Suite');
END

-- Doubletree By Hilton London-Islington | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=695 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (695, 1, 2, '7155', 'SPR');
END

-- Doubletree By Hilton London-Islington | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=695 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (695, 1, 12, '7155', 'Suite');
END

-- Doubletree By Hilton London-Islington | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=695 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (695, 2, 2, '7156', 'SPR');
END

-- Doubletree By Hilton London-Islington | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=695 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (695, 2, 12, '7156', 'Suite');
END

-- The Clermont Hotel Victoria (ex:The Amba Hotel Grosvenor) | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1265 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1265, 1, 2, '7157', 'SPR');
END

-- The Clermont Hotel Victoria (ex:The Amba Hotel Grosvenor) | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1265 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1265, 1, 12, '7157', 'Suite');
END

-- The Clermont Hotel Victoria (ex:The Amba Hotel Grosvenor) | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1265 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1265, 2, 2, '7158', 'SPR');
END

-- The Clermont Hotel Victoria (ex:The Amba Hotel Grosvenor) | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1265 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1265, 2, 12, '7158', 'Suite');
END

-- Thistle Holborn, The Kingsley | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1329 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1329, 1, 2, '7161', 'SPR');
END

-- Thistle Holborn, The Kingsley | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1329 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1329, 1, 12, '7161', 'Suite');
END

-- Thistle Holborn, The Kingsley | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1329 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1329, 2, 2, '7162', 'SPR');
END

-- Thistle Holborn, The Kingsley | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1329 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1329, 2, 12, '7162', 'Suite');
END

-- Pullman London St Pancras | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1360 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1360, 1, 4, '7177', 'DLX');
END

-- Pullman London St Pancras | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1360 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1360, 1, 12, '7177', 'Suite');
END

-- Pullman London St Pancras | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1360 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1360, 2, 4, '7178', 'DLX');
END

-- Pullman London St Pancras | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1360 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1360, 2, 12, '7178', 'Suite');
END

-- Phoenix Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1514 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1514, 1, 2, '7095', 'SPR');
END

-- Phoenix Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1514 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1514, 1, 12, '7095', 'Suite');
END

-- Phoenix Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1514 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1514, 2, 2, '7096', 'SPR');
END

-- Phoenix Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1514 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1514, 2, 12, '7096', 'Suite');
END

-- The Clermont Hotel, Charing Cross (Ex: Amba Charing Cross - Guonan) | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1758 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1758, 1, 12, '7192', 'Suite');
END

-- The Clermont Hotel, Charing Cross (Ex: Amba Charing Cross - Guonan) | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1758 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1758, 2, 12, '7193', 'Suite');
END

-- St James' Court A Taj Hotel (former Crowne Plaza St James) | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1850 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1850, 1, 2, '7173', 'SPR');
END

-- St James' Court A Taj Hotel (former Crowne Plaza St James) | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1850 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1850, 1, 4, '7173', 'DLX');
END

-- St James' Court A Taj Hotel (former Crowne Plaza St James) | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1850 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1850, 1, 12, '7173', 'Suite');
END

-- St James' Court A Taj Hotel (former Crowne Plaza St James) | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1850 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1850, 2, 2, '7174', 'SPR');
END

-- St James' Court A Taj Hotel (former Crowne Plaza St James) | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1850 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1850, 2, 4, '7174', 'DLX');
END

-- St James' Court A Taj Hotel (former Crowne Plaza St James) | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=1850 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (1850, 2, 12, '7174', 'Suite');
END

-- Est Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=2315 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (2315, 1, 2, '7528', 'SPR');
END

-- Est Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=2315 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (2315, 1, 4, '7528', 'DLX');
END

-- Est Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=2315 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (2315, 1, 12, '7528', 'Suite');
END

-- Est Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=2315 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (2315, 2, 2, '7529', 'SPR');
END

-- Est Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=2315 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (2315, 2, 4, '7529', 'DLX');
END

-- Est Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=2315 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (2315, 2, 12, '7529', 'Suite');
END

-- Hotel Central Saint Germain | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3160 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3160, 1, 2, '7547', 'SPR');
END

-- Hotel Central Saint Germain | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3160 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3160, 1, 4, '7547', 'DLX');
END

-- Hotel Central Saint Germain | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3160 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3160, 1, 12, '7547', 'Suite');
END

-- Hotel Central Saint Germain | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3160 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3160, 2, 2, '7548', 'SPR');
END

-- Hotel Central Saint Germain | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3160 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3160, 2, 4, '7548', 'DLX');
END

-- Hotel Central Saint Germain | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3160 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3160, 2, 12, '7548', 'Suite');
END

-- Hotel Le Senat | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3327 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3327, 1, 4, '7604', 'DLX');
END

-- Hotel Le Senat | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3327 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3327, 1, 12, '7604', 'Suite');
END

-- Hotel Le Senat | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3327 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3327, 2, 4, '7605', 'DLX');
END

-- Hotel Le Senat | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3327 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3327, 2, 12, '7605', 'Suite');
END

-- Thistle Trafalgar, Leicester Square | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3570 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3570, 1, 2, '7125', 'SPR');
END

-- Thistle Trafalgar, Leicester Square | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3570 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3570, 1, 12, '7125', 'Suite');
END

-- Thistle Trafalgar, Leicester Square | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3570 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3570, 2, 2, '7126', 'SPR');
END

-- Thistle Trafalgar, Leicester Square | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3570 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3570, 2, 12, '7126', 'Suite');
END

-- The Belgrave Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3742 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3742, 1, 2, '7175', 'SPR');
END

-- The Belgrave Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3742 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3742, 1, 12, '7175', 'Suite');
END

-- The Belgrave Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3742 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3742, 2, 2, '7176', 'SPR');
END

-- The Belgrave Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3742 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3742, 2, 12, '7176', 'Suite');
END

-- Doubletree by Hilton Westminster [ex. City Inn and Mint Westminster] | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3946 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3946, 1, 2, '7169', 'SPR');
END

-- Doubletree by Hilton Westminster [ex. City Inn and Mint Westminster] | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3946 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3946, 1, 4, '7169', 'DLX');
END

-- Doubletree by Hilton Westminster [ex. City Inn and Mint Westminster] | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3946 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3946, 2, 2, '7170', 'SPR');
END

-- Doubletree by Hilton Westminster [ex. City Inn and Mint Westminster] | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=3946 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (3946, 2, 4, '7170', 'DLX');
END

-- Rixos Premium Belek | AI/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4241 AND BoardId=5 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4241, 5, 2, '7083', 'SPR');
END

-- Rixos Premium Belek | AI/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4241 AND BoardId=5 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4241, 5, 4, '7083', 'DLX');
END

-- Rixos Premium Belek | AI/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4241 AND BoardId=5 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4241, 5, 12, '7083', 'Suite');
END

-- New Hotel Roblin | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4329 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4329, 1, 4, '7689', 'DLX');
END

-- New Hotel Roblin | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4329 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4329, 1, 12, '7689', 'Suite');
END

-- New Hotel Roblin | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4329 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4329, 2, 4, '7690', 'DLX');
END

-- New Hotel Roblin | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4329 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4329, 2, 12, '7690', 'Suite');
END

-- Citadines Trafalgar Square London | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4735 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4735, 1, 2, '7121', 'SPR');
END

-- Citadines Trafalgar Square London | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4735 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4735, 1, 4, '7121', 'DLX');
END

-- Citadines Trafalgar Square London | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4735 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4735, 1, 12, '7121', 'Suite');
END

-- Citadines Saint-Germain Des Pres | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4755 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4755, 1, 2, '7691', 'SPR');
END

-- Citadines Saint-Germain Des Pres | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4755 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4755, 1, 12, '7691', 'Suite');
END

-- PARK PLAZA RIVERBANK | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4848 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4848, 1, 4, '7129', 'DLX');
END

-- PARK PLAZA RIVERBANK | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4848 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4848, 1, 12, '7129', 'Suite');
END

-- PARK PLAZA RIVERBANK | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4848 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4848, 2, 4, '7130', 'DLX');
END

-- PARK PLAZA RIVERBANK | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=4848 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (4848, 2, 12, '7130', 'Suite');
END

-- Elysees 8 Hotel (ex Timhotel Elysees Cambaceres) | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5012 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5012, 1, 2, '7541', 'SPR');
END

-- Elysees 8 Hotel (ex Timhotel Elysees Cambaceres) | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5012 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5012, 1, 4, '7541', 'DLX');
END

-- Elysees 8 Hotel (ex Timhotel Elysees Cambaceres) | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5012 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5012, 1, 12, '7541', 'Suite');
END

-- Elysees 8 Hotel (ex Timhotel Elysees Cambaceres) | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5012 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5012, 2, 2, '7542', 'SPR');
END

-- Elysees 8 Hotel (ex Timhotel Elysees Cambaceres) | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5012 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5012, 2, 4, '7542', 'DLX');
END

-- Elysees 8 Hotel (ex Timhotel Elysees Cambaceres) | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5012 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5012, 2, 12, '7542', 'Suite');
END

-- Thistle Piccadilly | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5470 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5470, 1, 2, '7167', 'SPR');
END

-- Thistle Piccadilly | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5470 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5470, 1, 12, '7167', 'Suite');
END

-- Thistle Piccadilly | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5470 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5470, 2, 2, '7168', 'SPR');
END

-- Thistle Piccadilly | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5470 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5470, 2, 12, '7168', 'Suite');
END

-- Les Tournelles (formerly Les Chevaliers Du Marais) | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5738 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5738, 1, 2, '7539', 'SPR');
END

-- Les Tournelles (formerly Les Chevaliers Du Marais) | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5738 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5738, 1, 4, '7539', 'DLX');
END

-- Les Tournelles (formerly Les Chevaliers Du Marais) | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5738 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5738, 1, 12, '7539', 'Suite');
END

-- Les Tournelles (formerly Les Chevaliers Du Marais) | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5738 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5738, 2, 2, '7540', 'SPR');
END

-- Les Tournelles (formerly Les Chevaliers Du Marais) | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5738 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5738, 2, 4, '7540', 'DLX');
END

-- Les Tournelles (formerly Les Chevaliers Du Marais) | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=5738 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (5738, 2, 12, '7540', 'Suite');
END

-- The Venetian Resort Hotel & Casino | RO/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6322 AND BoardId=1 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6322, 1, 1, '7382', 'Stnd');
END

-- The Venetian Resort Hotel & Casino | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6322 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6322, 1, 2, '7382', 'SPR');
END

-- Wynn Las Vegas | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6325 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6325, 1, 2, '7375', 'SPR');
END

-- Wynn Las Vegas | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6325 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6325, 1, 12, '7375', 'Suite');
END

-- InterContinental Miami | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6482 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6482, 1, 2, '12035', 'SPR');
END

-- InterContinental Miami | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6482 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6482, 2, 2, '13168', 'SPR');
END

-- InterContinental Miami | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6482 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6482, 2, 4, '13168', 'DLX');
END

-- Dorchester Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6654 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6654, 1, 2, '12035', 'SPR');
END

-- Dorchester Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6654 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6654, 2, 2, '13168', 'SPR');
END

-- Dorchester Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6654 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6654, 2, 4, '13168', 'DLX');
END

-- Freehand Miami | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6660 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6660, 1, 4, '12076', 'DLX');
END

-- Loews Miami Beach Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6661 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6661, 1, 2, '12033', 'SPR');
END

-- Loews Miami Beach Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6661 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6661, 1, 4, '12033', 'DLX');
END

-- Marseilles Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6663 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6663, 1, 2, '12065', 'SPR');
END

-- Marseilles Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=6663 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (6663, 1, 4, '12065', 'DLX');
END

-- Dusit Thani | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10192 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10192, 1, 2, '7252', 'SPR');
END

-- Dusit Thani | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10192 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10192, 1, 12, '7252', 'Suite');
END

-- Dusit Thani | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10192 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10192, 2, 2, '7253', 'SPR');
END

-- Dusit Thani | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10192 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10192, 2, 12, '7253', 'Suite');
END

-- St Regis Downtown | RO/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10248 AND BoardId=1 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10248, 1, 1, '7271', 'Stnd');
END

-- St Regis Downtown | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10248 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10248, 1, 12, '7271', 'Suite');
END

-- St Regis Downtown | BB/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10248 AND BoardId=2 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10248, 2, 1, '7272', 'Stnd');
END

-- St Regis Downtown | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10248 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10248, 2, 12, '7272', 'Suite');
END

-- Shangri-La Dubai | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10265 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10265, 1, 2, '7258', 'SPR');
END

-- Shangri-La Dubai | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10265 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10265, 1, 12, '7258', 'Suite');
END

-- Shangri-La Dubai | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10265 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10265, 2, 2, '7259', 'SPR');
END

-- Shangri-La Dubai | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10265 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10265, 2, 12, '7259', 'Suite');
END

-- Royal National Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10379 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10379, 1, 2, '7376', 'SPR');
END

-- Royal National Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10379 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10379, 1, 4, '7376', 'DLX');
END

-- Royal National Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10379 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10379, 1, 12, '7376', 'Suite');
END

-- Royal National Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10379 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10379, 2, 2, '7377', 'SPR');
END

-- Royal National Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10379 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10379, 2, 4, '7377', 'DLX');
END

-- Royal National Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=10379 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (10379, 2, 12, '7377', 'Suite');
END

-- Blakemore Hyde Park | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=11661 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (11661, 1, 2, '7086', 'SPR');
END

-- Blakemore Hyde Park | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=11661 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (11661, 1, 4, '7086', 'DLX');
END

-- Blakemore Hyde Park | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=11661 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (11661, 1, 12, '7086', 'Suite');
END

-- Blakemore Hyde Park | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=11661 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (11661, 2, 2, '7864', 'SPR');
END

-- Blakemore Hyde Park | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=11661 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (11661, 2, 4, '7864', 'DLX');
END

-- Blakemore Hyde Park | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=11661 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (11661, 2, 12, '7864', 'Suite');
END

-- Maritim Jolie Ville Golf & Resort | RO/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12727 AND BoardId=1 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12727, 1, 1, '7329', 'Stnd');
END

-- Maritim Jolie Ville Golf & Resort | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12727 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12727, 1, 12, '7329', 'Suite');
END

-- Maritim Jolie Ville Golf & Resort | BB/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12727 AND BoardId=2 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12727, 2, 1, '7330', 'Stnd');
END

-- Maritim Jolie Ville Golf & Resort | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12727 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12727, 2, 12, '7330', 'Suite');
END

-- Brown Lighthouse Eilat | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12821 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12821, 1, 4, '7763', 'DLX');
END

-- Brown Lighthouse Eilat | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12821 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12821, 1, 12, '7763', 'Suite');
END

-- Brown Lighthouse Eilat | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12821 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12821, 2, 4, '7764', 'DLX');
END

-- Brown Lighthouse Eilat | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12821 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12821, 2, 12, '7764', 'Suite');
END

-- Brown Eilat | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12824 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12824, 1, 2, '7760', 'SPR');
END

-- Brown Eilat | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12824 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12824, 1, 4, '7760', 'DLX');
END

-- Brown Eilat | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12824 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12824, 1, 12, '7760', 'Suite');
END

-- Brown Eilat | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12824 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12824, 2, 2, '7761', 'SPR');
END

-- Brown Eilat | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12824 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12824, 2, 4, '7761', 'DLX');
END

-- Brown Eilat | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12824 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12824, 2, 12, '7761', 'Suite');
END

-- Sea Net | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12915 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12915, 2, 12, '7185', 'Suite');
END

-- Shalom hotel & Relax | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12916 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12916, 1, 4, '7139', 'DLX');
END

-- Shalom hotel & Relax | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12916 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12916, 1, 12, '7139', 'Suite');
END

-- Shalom hotel & Relax | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12916 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12916, 2, 4, '7140', 'DLX');
END

-- Shalom hotel & Relax | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=12916 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (12916, 2, 12, '7140', 'Suite');
END

-- Vital | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=14702 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (14702, 1, 2, '7147', 'SPR');
END

-- Vital | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=14702 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (14702, 1, 4, '7147', 'DLX');
END

-- Vital | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=14702 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (14702, 1, 12, '7147', 'Suite');
END

-- Vital | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=14702 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (14702, 2, 2, '7148', 'SPR');
END

-- Vital | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=14702 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (14702, 2, 4, '7148', 'DLX');
END

-- Vital | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=14702 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (14702, 2, 12, '7148', 'Suite');
END

-- Grand Palladium Palace Resort & Spa | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=14760 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (14760, 1, 2, '7378', 'SPR');
END

-- Grand Palladium Palace Resort & Spa | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=14760 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (14760, 1, 12, '7378', 'Suite');
END

-- Grand Palladium Palace Resort & Spa | AI/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=14760 AND BoardId=5 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (14760, 5, 2, '7392', 'SPR');
END

-- Grand Palladium Palace Resort & Spa | AI/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=14760 AND BoardId=5 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (14760, 5, 12, '7392', 'Suite');
END

-- The Hoxton Shoreditch | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=15012 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (15012, 1, 2, '7187', 'SPR');
END

-- The Hoxton Shoreditch | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=15012 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (15012, 1, 4, '7187', 'DLX');
END

-- The Hoxton Shoreditch | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=15012 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (15012, 1, 12, '7187', 'Suite');
END

-- Mandeville | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=15156 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (15156, 1, 4, '7165', 'DLX');
END

-- Mandeville | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=15156 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (15156, 1, 12, '7165', 'Suite');
END

-- Mandeville | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=15156 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (15156, 2, 4, '7166', 'DLX');
END

-- Mandeville | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=15156 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (15156, 2, 12, '7166', 'Suite');
END

-- Eden Opera Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=15906 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (15906, 1, 4, '7526', 'DLX');
END

-- Eden Opera Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=15906 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (15906, 1, 12, '7526', 'Suite');
END

-- Eden Opera Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=15906 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (15906, 2, 4, '7527', 'DLX');
END

-- Eden Opera Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=15906 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (15906, 2, 12, '7527', 'Suite');
END

-- Peyris Opera | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16711 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16711, 1, 4, '7534', 'DLX');
END

-- Peyris Opera | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16711 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16711, 1, 12, '7534', 'Suite');
END

-- Peyris Opera | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16711 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16711, 2, 4, '7535', 'DLX');
END

-- Peyris Opera | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16711 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16711, 2, 12, '7535', 'Suite');
END

-- Hotel Plaza Elysees (Ex. BEST WESTERN Plaza Elysees) | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16861 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16861, 1, 4, '7676', 'DLX');
END

-- Hotel Plaza Elysees (Ex. BEST WESTERN Plaza Elysees) | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16861 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16861, 1, 12, '7676', 'Suite');
END

-- Hotel Plaza Elysees (Ex. BEST WESTERN Plaza Elysees) | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16861 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16861, 2, 4, '7677', 'DLX');
END

-- Hotel Plaza Elysees (Ex. BEST WESTERN Plaza Elysees) | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16861 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16861, 2, 12, '7677', 'Suite');
END

-- Princesse Caroline | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16864 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16864, 1, 2, '7536', 'SPR');
END

-- Princesse Caroline | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16864 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16864, 1, 4, '7536', 'DLX');
END

-- Princesse Caroline | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16864 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16864, 1, 12, '7536', 'Suite');
END

-- Princesse Caroline | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16864 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16864, 2, 2, '7899', 'SPR');
END

-- Princesse Caroline | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16864 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16864, 2, 4, '7899', 'DLX');
END

-- Princesse Caroline | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16864 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16864, 2, 12, '7899', 'Suite');
END

-- Hotel Marceau Champs Elysees | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16873 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16873, 1, 4, '7692', 'DLX');
END

-- Hotel Marceau Champs Elysees | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16873 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16873, 1, 12, '7692', 'Suite');
END

-- Hotel Park Lane Paris | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16877 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16877, 1, 4, '7682', 'DLX');
END

-- Hotel Park Lane Paris | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16877 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16877, 1, 12, '7682', 'Suite');
END

-- Hotel Park Lane Paris | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16877 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16877, 2, 4, '7683', 'DLX');
END

-- Hotel Park Lane Paris | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=16877 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (16877, 2, 12, '7683', 'Suite');
END

-- Heritance Kandalama | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=17098 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (17098, 2, 2, '7059', 'SPR');
END

-- Heritance Kandalama | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=17098 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (17098, 2, 4, '7059', 'DLX');
END

-- Heritance Kandalama | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=17098 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (17098, 2, 12, '7059', 'Suite');
END

-- Fontainebleau Miami Beach | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=19977 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (19977, 1, 2, '12035', 'SPR');
END

-- Fontainebleau Miami Beach | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=19977 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (19977, 2, 2, '13168', 'SPR');
END

-- Fontainebleau Miami Beach | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=19977 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (19977, 2, 4, '13168', 'DLX');
END

-- Park Grand London Kensington | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20613 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20613, 1, 12, '7088', 'Suite');
END

-- Park Grand London Kensington | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20613 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20613, 2, 12, '7087', 'Suite');
END

-- Embassy Suites by Hilton Miami International Airport | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20702, 1, 2, '12045', 'SPR');
END

-- Embassy Suites by Hilton Miami International Airport | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20702, 1, 4, '12045', 'DLX');
END

-- Embassy Suites by Hilton Miami International Airport | BB/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20702, 2, 1, '13170', 'Stnd');
END

-- Embassy Suites by Hilton Miami International Airport | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20702, 2, 2, '13170', 'SPR');
END

-- Embassy Suites by Hilton Miami International Airport | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20702, 2, 4, '13170', 'DLX');
END

-- Hilton Miami Airport | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20706 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20706, 1, 2, '12035', 'SPR');
END

-- Hilton Miami Airport | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20706 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20706, 2, 2, '13168', 'SPR');
END

-- Hilton Miami Airport | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20706 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20706, 2, 4, '13168', 'DLX');
END

-- Isrotel Tower Tel Aviv Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=21106 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (21106, 1, 12, '7179', 'Suite');
END

-- Isrotel Tower Tel Aviv Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=21106 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (21106, 2, 12, '7180', 'Suite');
END

-- Trianon Rive Gauche (Ex. Best Western Trianon Rive Gauche) | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=21162 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (21162, 1, 4, '7687', 'DLX');
END

-- Trianon Rive Gauche (Ex. Best Western Trianon Rive Gauche) | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=21162 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (21162, 1, 12, '7687', 'Suite');
END

-- Trianon Rive Gauche (Ex. Best Western Trianon Rive Gauche) | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=21162 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (21162, 2, 4, '7688', 'DLX');
END

-- Trianon Rive Gauche (Ex. Best Western Trianon Rive Gauche) | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=21162 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (21162, 2, 12, '7688', 'Suite');
END

-- Miami International Airport Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=21842 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (21842, 1, 2, '12035', 'SPR');
END

-- Miami International Airport Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=21842 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (21842, 2, 2, '13168', 'SPR');
END

-- Miami International Airport Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=21842 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (21842, 2, 4, '13168', 'DLX');
END

-- Hilton Bentley Miami South Beach | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=22034 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (22034, 1, 2, '12062', 'SPR');
END

-- Hilton Miami Downtown | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (24982, 1, 2, '12048', 'SPR');
END

-- Hilton Miami Downtown | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (24982, 1, 4, '12048', 'DLX');
END

-- Hilton Miami Downtown | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (24982, 2, 2, '13173', 'SPR');
END

-- Hilton Miami Downtown | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (24982, 2, 4, '13173', 'DLX');
END

-- Hotel Riu Plaza Miami Beach | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=24989 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (24989, 1, 2, '12077', 'SPR');
END

-- Hotel Riu Plaza Miami Beach | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=24989 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (24989, 1, 12, '12077', 'Suite');
END

-- Barcelo Imagine (Ex. Foxa 32) | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=26733 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (26733, 1, 2, '7380', 'SPR');
END

-- Barcelo Imagine (Ex. Foxa 32) | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=26733 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (26733, 1, 12, '7380', 'Suite');
END

-- Barcelo Imagine (Ex. Foxa 32) | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=26733 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (26733, 2, 2, '7381', 'SPR');
END

-- Barcelo Imagine (Ex. Foxa 32) | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=26733 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (26733, 2, 12, '7381', 'Suite');
END

-- Victoria Palace | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=26904 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (26904, 1, 4, '7673', 'DLX');
END

-- Victoria Palace | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=26904 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (26904, 1, 12, '7673', 'Suite');
END

-- Victoria Palace | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=26904 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (26904, 2, 4, '7674', 'DLX');
END

-- Victoria Palace | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=26904 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (26904, 2, 12, '7674', 'Suite');
END

-- Moderne St Germain | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=26914 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (26914, 1, 4, '7606', 'DLX');
END

-- Moderne St Germain | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=26914 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (26914, 1, 12, '7606', 'Suite');
END

-- Moderne St Germain | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=26914 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (26914, 2, 4, '7607', 'DLX');
END

-- Moderne St Germain | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=26914 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (26914, 2, 12, '7607', 'Suite');
END

-- Hotel Du Vieux Saule | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=27493 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (27493, 1, 4, '7596', 'DLX');
END

-- Hotel Du Vieux Saule | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=27493 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (27493, 1, 12, '7596', 'Suite');
END

-- Hotel Du Vieux Saule | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=27493 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (27493, 2, 4, '7597', 'DLX');
END

-- Hotel Du Vieux Saule | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=27493 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (27493, 2, 12, '7597', 'Suite');
END

-- PARK PLAZA COUNTY HALL | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=28636 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (28636, 1, 4, '7089', 'DLX');
END

-- PARK PLAZA COUNTY HALL | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=28636 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (28636, 1, 12, '7089', 'Suite');
END

-- PARK PLAZA COUNTY HALL | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=28636 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (28636, 2, 4, '7090', 'DLX');
END

-- PARK PLAZA COUNTY HALL | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=28636 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (28636, 2, 12, '7090', 'Suite');
END

-- The Palazzo Resort Hotel Casino | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=28757 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (28757, 1, 2, '7373', 'SPR');
END

-- Kimpton Angler's Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=31226 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (31226, 1, 2, '12035', 'SPR');
END

-- Kimpton Angler's Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=31226 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (31226, 2, 2, '13168', 'SPR');
END

-- Kimpton Angler's Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=31226 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (31226, 2, 4, '13168', 'DLX');
END

-- 54 Queen's Gate Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=31299 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (31299, 1, 2, '7091', 'SPR');
END

-- 54 Queen's Gate Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=31299 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (31299, 1, 12, '7091', 'Suite');
END

-- 54 Queen's Gate Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=31299 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (31299, 2, 2, '7092', 'SPR');
END

-- 54 Queen's Gate Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=31299 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (31299, 2, 12, '7092', 'Suite');
END

-- Metropole South Beach | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=31433 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (31433, 1, 2, '12035', 'SPR');
END

-- Metropole South Beach | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=31433 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (31433, 2, 2, '13168', 'SPR');
END

-- Metropole South Beach | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=31433 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (31433, 2, 4, '13168', 'DLX');
END

-- Viajero Miami | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=31709 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (31709, 1, 12, '12079', 'Suite');
END

-- Hotel Chelsea | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=32687 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (32687, 1, 2, '12035', 'SPR');
END

-- Hotel Chelsea | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=32687 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (32687, 2, 2, '13168', 'SPR');
END

-- Hotel Chelsea | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=32687 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (32687, 2, 4, '13168', 'DLX');
END

-- Best Western Grand Hotel De LUnivers | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=36281 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (36281, 1, 2, '7686', 'SPR');
END

-- Best Western Grand Hotel De LUnivers | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=36281 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (36281, 1, 12, '7686', 'Suite');
END

-- Hotel Duquesne Eiffel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=36919 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (36919, 1, 4, '7684', 'DLX');
END

-- Hotel Duquesne Eiffel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=36919 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (36919, 1, 12, '7684', 'Suite');
END

-- Hotel Duquesne Eiffel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=36919 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (36919, 2, 4, '7685', 'DLX');
END

-- Hotel Duquesne Eiffel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=36919 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (36919, 2, 12, '7685', 'Suite');
END

-- Renaissance Golden View Beach Resort | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=46256 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (46256, 1, 2, '7321', 'SPR');
END

-- Renaissance Golden View Beach Resort | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=46256 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (46256, 1, 4, '7321', 'DLX');
END

-- Renaissance Golden View Beach Resort | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=46256 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (46256, 2, 2, '7322', 'SPR');
END

-- Renaissance Golden View Beach Resort | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=46256 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (46256, 2, 4, '7322', 'DLX');
END

-- Renaissance Golden View Beach Resort | HB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=46256 AND BoardId=3 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (46256, 3, 2, '7847', 'SPR');
END

-- Renaissance Golden View Beach Resort | HB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=46256 AND BoardId=3 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (46256, 3, 4, '7847', 'DLX');
END

-- Iberotel Palace | AI/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=48442 AND BoardId=5 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (48442, 5, 1, '7334', 'Stnd');
END

-- Iberotel Palace | AI/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=48442 AND BoardId=5 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (48442, 5, 4, '7334', 'DLX');
END

-- The Westin | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=49182 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (49182, 1, 2, '7078', 'SPR');
END

-- The Westin | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=49182 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (49182, 1, 12, '7078', 'Suite');
END

-- The Westin | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=49182 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (49182, 2, 2, '7079', 'SPR');
END

-- The Westin | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=49182 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (49182, 2, 12, '7079', 'Suite');
END

-- Park Plaza Westminster Bridge | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=50771 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (50771, 1, 4, '7159', 'DLX');
END

-- Park Plaza Westminster Bridge | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=50771 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (50771, 1, 12, '7159', 'Suite');
END

-- Park Plaza Westminster Bridge | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=50771 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (50771, 2, 4, '7160', 'DLX');
END

-- Park Plaza Westminster Bridge | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=50771 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (50771, 2, 12, '7160', 'Suite');
END

-- H10 LONDON WATERLOO | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=51200 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (51200, 1, 2, '7135', 'SPR');
END

-- H10 LONDON WATERLOO | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=51200 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (51200, 1, 12, '7135', 'Suite');
END

-- H10 LONDON WATERLOO | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=51200 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (51200, 2, 2, '7136', 'SPR');
END

-- H10 LONDON WATERLOO | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=51200 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (51200, 2, 12, '7136', 'Suite');
END

-- The Palace Downtown Dubai | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=51284 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (51284, 1, 2, '7229', 'SPR');
END

-- The Palace Downtown Dubai | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=51284 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (51284, 2, 2, '7230', 'SPR');
END

-- Chamberlain Hotel | BB/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=54309 AND BoardId=2 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (54309, 2, 1, '7134', 'Stnd');
END

-- Chamberlain Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=54309 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (54309, 2, 2, '7134', 'SPR');
END

-- Chamberlain Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=54309 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (54309, 2, 12, '7134', 'Suite');
END

-- Sea Executive Suites | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=56061 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (56061, 1, 2, '7143', 'SPR');
END

-- Sea Executive Suites | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=56061 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (56061, 1, 4, '7143', 'DLX');
END

-- Sea Executive Suites | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=56061 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (56061, 1, 12, '7143', 'Suite');
END

-- Sea Executive Suites | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=56061 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (56061, 2, 2, '7144', 'SPR');
END

-- Sea Executive Suites | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=56061 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (56061, 2, 4, '7144', 'DLX');
END

-- Sea Executive Suites | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=56061 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (56061, 2, 12, '7144', 'Suite');
END

-- Savoy Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=64309 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (64309, 1, 2, '12071', 'SPR');
END

-- Savoy Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=64309 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (64309, 2, 2, '13155', 'SPR');
END

-- Crystal Beach Suites Hotel | RO/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=64390 AND BoardId=1 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (64390, 1, 1, '12069', 'Stnd');
END

-- Crystal Beach Suites Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=64390 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (64390, 1, 2, '12069', 'SPR');
END

-- Crystal Beach Suites Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=64390 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (64390, 1, 4, '12069', 'DLX');
END

-- The Address Dubai Mall | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=65895 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (65895, 1, 2, '7237', 'SPR');
END

-- The Address Dubai Mall | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=65895 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (65895, 1, 12, '7237', 'Suite');
END

-- The Address Dubai Mall | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=65895 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (65895, 2, 2, '7238', 'SPR');
END

-- The Address Dubai Mall | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=65895 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (65895, 2, 12, '7238', 'Suite');
END

-- Cavalier Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=66737 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (66737, 1, 2, '12035', 'SPR');
END

-- Cavalier Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=66737 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (66737, 2, 2, '13168', 'SPR');
END

-- Cavalier Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=66737 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (66737, 2, 4, '13168', 'DLX');
END

-- The Westbourne Hyde Park [Ex. Royal Court Apartments] | RO/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=66811 AND BoardId=1 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (66811, 1, 1, '7124', 'Stnd');
END

-- The Westbourne Hyde Park [Ex. Royal Court Apartments] | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=66811 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (66811, 1, 2, '7124', 'SPR');
END

-- HOLIDAY INN EXPRESS HOTEL & SUITES MIAMI | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=67387 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (67387, 1, 2, '12035', 'SPR');
END

-- HOLIDAY INN EXPRESS HOTEL & SUITES MIAMI | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=67387 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (67387, 2, 2, '13168', 'SPR');
END

-- HOLIDAY INN EXPRESS HOTEL & SUITES MIAMI | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=67387 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (67387, 2, 4, '13168', 'DLX');
END

-- Best Western Premier Au Manoir Saint Germain De Pres | RO/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=68023 AND BoardId=1 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (68023, 1, 1, '7552', 'Stnd');
END

-- Best Western Premier Au Manoir Saint Germain De Pres | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=68023 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (68023, 1, 12, '7552', 'Suite');
END

-- Grand Beach Hotel Miami | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=68833 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (68833, 1, 2, '12035', 'SPR');
END

-- Grand Beach Hotel Miami | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=68833 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (68833, 2, 2, '13168', 'SPR');
END

-- Grand Beach Hotel Miami | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=68833 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (68833, 2, 4, '13168', 'DLX');
END

-- MB Hotel, Trademark Collection by Wyndham | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=70995 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (70995, 1, 2, '12073', 'SPR');
END

-- OLIVER PLAZA | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=71106 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (71106, 1, 2, '7122', 'SPR');
END

-- OLIVER PLAZA | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=71106 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (71106, 1, 4, '7122', 'DLX');
END

-- OLIVER PLAZA | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=71106 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (71106, 1, 12, '7122', 'Suite');
END

-- OLIVER PLAZA | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=71106 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (71106, 2, 2, '7123', 'SPR');
END

-- OLIVER PLAZA | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=71106 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (71106, 2, 4, '7123', 'DLX');
END

-- OLIVER PLAZA | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=71106 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (71106, 2, 12, '7123', 'Suite');
END

-- Queen'S Gate Hotel [Ex. Abba Queens Gate Hotel] | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=71423 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (71423, 1, 12, '7190', 'Suite');
END

-- Queen'S Gate Hotel [Ex. Abba Queens Gate Hotel] | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=71423 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (71423, 2, 12, '7191', 'Suite');
END

-- Atlantic | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=78266 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (78266, 1, 4, '7530', 'DLX');
END

-- Atlantic | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=78266 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (78266, 1, 12, '7530', 'Suite');
END

-- Prince De Conde | RO/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=79794 AND BoardId=1 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (79794, 1, 1, '7668', 'Stnd');
END

-- Prince De Conde | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=79794 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (79794, 1, 4, '7668', 'DLX');
END

-- Hotel France d'Antin Opéra | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=79914 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (79914, 1, 4, '7665', 'DLX');
END

-- Hotel France d'Antin Opéra | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=79914 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (79914, 1, 12, '7665', 'Suite');
END

-- THE SANCTUARY HOUSE | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=80408 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (80408, 1, 2, '7115', 'SPR');
END

-- THE SANCTUARY HOUSE | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=80408 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (80408, 1, 12, '7115', 'Suite');
END

-- THE SANCTUARY HOUSE | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=80408 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (80408, 2, 2, '7116', 'SPR');
END

-- THE SANCTUARY HOUSE | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=80408 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (80408, 2, 12, '7116', 'Suite');
END

-- Baron Palms Resort Sharm El Sheikh | AI/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=82138 AND BoardId=5 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (82138, 5, 1, '7332', 'Stnd');
END

-- Baron Palms Resort Sharm El Sheikh | AI/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=82138 AND BoardId=5 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (82138, 5, 4, '7332', 'DLX');
END

-- Westgate Las Vegas Hotel and Casino - The LVH | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=85535 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (85535, 1, 2, '7372', 'SPR');
END

-- Westgate Las Vegas Hotel and Casino - The LVH | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=85535 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (85535, 1, 12, '7372', 'Suite');
END

-- Moris Hotel Paris/MORIS GRANDS BOULEVARDS | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=86005 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (86005, 1, 4, '7532', 'DLX');
END

-- Moris Hotel Paris/MORIS GRANDS BOULEVARDS | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=86005 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (86005, 1, 12, '7532', 'Suite');
END

-- Moris Hotel Paris/MORIS GRANDS BOULEVARDS | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=86005 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (86005, 2, 4, '7533', 'DLX');
END

-- Moris Hotel Paris/MORIS GRANDS BOULEVARDS | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=86005 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (86005, 2, 12, '7533', 'Suite');
END

-- The Catalina Hotel & Beach Club | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=87197 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (87197, 1, 2, '12035', 'SPR');
END

-- The Catalina Hotel & Beach Club | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=87197 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (87197, 2, 2, '13168', 'SPR');
END

-- The Catalina Hotel & Beach Club | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=87197 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (87197, 2, 4, '13168', 'DLX');
END

-- Cosmopolitan of Las Vegas | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=88064 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (88064, 1, 2, '7374', 'SPR');
END

-- Cosmopolitan of Las Vegas | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=88064 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (88064, 1, 12, '7374', 'Suite');
END

-- Sole Miami, A Noble House Resort | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=88282 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (88282, 1, 2, '12072', 'SPR');
END

-- Sole Miami, A Noble House Resort | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=88282 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (88282, 1, 4, '12072', 'DLX');
END

-- Jumeirah Emirates Towers | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=90340 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (90340, 1, 2, '7273', 'SPR');
END

-- Jumeirah Emirates Towers | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=90340 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (90340, 1, 12, '7273', 'Suite');
END

-- Jumeirah Emirates Towers | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=90340 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (90340, 2, 2, '7274', 'SPR');
END

-- Jumeirah Emirates Towers | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=90340 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (90340, 2, 12, '7274', 'Suite');
END

-- Radisson Water Garden | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=92657 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (92657, 1, 2, '7080', 'SPR');
END

-- Radisson Water Garden | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=92657 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (92657, 1, 4, '7080', 'DLX');
END

-- Radisson Water Garden | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=92657 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (92657, 1, 12, '7080', 'Suite');
END

-- Radisson Water Garden | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=92657 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (92657, 2, 2, '7085', 'SPR');
END

-- Radisson Water Garden | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=92657 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (92657, 2, 4, '7085', 'DLX');
END

-- Radisson Water Garden | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=92657 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (92657, 2, 12, '7085', 'Suite');
END

-- voco Dubai, an IHG Hotel [ex. Royal Hotel / Radisson Royal Hotel / JAL Tower Dubai] | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=95149 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (95149, 1, 2, '7245', 'SPR');
END

-- voco Dubai, an IHG Hotel [ex. Royal Hotel / Radisson Royal Hotel / JAL Tower Dubai] | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=95149 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (95149, 1, 12, '7245', 'Suite');
END

-- voco Dubai, an IHG Hotel [ex. Royal Hotel / Radisson Royal Hotel / JAL Tower Dubai] | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=95149 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (95149, 2, 2, '7246', 'SPR');
END

-- voco Dubai, an IHG Hotel [ex. Royal Hotel / Radisson Royal Hotel / JAL Tower Dubai] | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=95149 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (95149, 2, 12, '7246', 'Suite');
END

-- The Ritz-Carlton, Dubai International Financial Centre | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=95797 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (95797, 1, 2, '7217', 'SPR');
END

-- The Ritz-Carlton, Dubai International Financial Centre | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=95797 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (95797, 1, 12, '7217', 'Suite');
END

-- The Ritz-Carlton, Dubai International Financial Centre | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=95797 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (95797, 2, 2, '7218', 'SPR');
END

-- The Ritz-Carlton, Dubai International Financial Centre | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=95797 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (95797, 2, 12, '7218', 'Suite');
END

-- Armani Hotel Dubai | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=95822 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (95822, 1, 2, '7233', 'SPR');
END

-- Armani Hotel Dubai | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=95822 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (95822, 1, 12, '7233', 'Suite');
END

-- Armani Hotel Dubai | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=95822 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (95822, 2, 2, '7234', 'SPR');
END

-- Armani Hotel Dubai | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=95822 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (95822, 2, 12, '7234', 'Suite');
END

-- Tropitel Naama Bay | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=98597 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (98597, 1, 4, '7327', 'DLX');
END

-- Tropitel Naama Bay | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=98597 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (98597, 1, 12, '7327', 'Suite');
END

-- Tropitel Naama Bay | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=98597 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (98597, 2, 4, '7328', 'DLX');
END

-- Tropitel Naama Bay | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=98597 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (98597, 2, 12, '7328', 'Suite');
END

-- Sharm Dreams Resort | BB/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=113912 AND BoardId=2 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (113912, 2, 1, '7326', 'Stnd');
END

-- Sharm Dreams Resort | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=113912 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (113912, 2, 12, '7326', 'Suite');
END

-- Sharm Dreams Resort | AI/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=113912 AND BoardId=5 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (113912, 5, 1, '7325', 'Stnd');
END

-- Sharm Dreams Resort | AI/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=113912 AND BoardId=5 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (113912, 5, 12, '7325', 'Suite');
END

-- Hotel le Clement | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117130 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117130, 1, 4, '7550', 'DLX');
END

-- Hotel le Clement | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117130 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117130, 1, 12, '7550', 'Suite');
END

-- Hotel le Clement | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117130 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117130, 2, 4, '7551', 'DLX');
END

-- Hotel le Clement | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117130 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117130, 2, 12, '7551', 'Suite');
END

-- RELAIS HOTEL DU VIEUX PARIS | RO/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117316 AND BoardId=1 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117316, 1, 1, '7598', 'Stnd');
END

-- RELAIS HOTEL DU VIEUX PARIS | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117316 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117316, 1, 12, '7598', 'Suite');
END

-- RELAIS HOTEL DU VIEUX PARIS | BB/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117316 AND BoardId=2 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117316, 2, 1, '7599', 'Stnd');
END

-- RELAIS HOTEL DU VIEUX PARIS | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117316 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117316, 2, 12, '7599', 'Suite');
END

-- Villa Des Princes | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117424 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117424, 1, 2, '7680', 'SPR');
END

-- Villa Des Princes | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117424 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117424, 1, 12, '7680', 'Suite');
END

-- Villa Des Princes | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117424 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117424, 2, 2, '7681', 'SPR');
END

-- Villa Des Princes | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117424 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117424, 2, 12, '7681', 'Suite');
END

-- FAIRWIND HOTEL & SUITES SOUTH BEACH | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117491 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117491, 1, 2, '12059', 'SPR');
END

-- FAIRWIND HOTEL & SUITES SOUTH BEACH | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117491 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117491, 1, 12, '12059', 'Suite');
END

-- Brown Acropol By Brown Hotels | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=118069 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (118069, 1, 2, '7769', 'SPR');
END

-- Brown Acropol By Brown Hotels | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=118069 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (118069, 1, 12, '7769', 'Suite');
END

-- Brown Acropol By Brown Hotels | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=118069 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (118069, 2, 2, '7770', 'SPR');
END

-- Brown Acropol By Brown Hotels | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=118069 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (118069, 2, 12, '7770', 'Suite');
END

-- Brown Acropol By Brown Hotels | HB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=118069 AND BoardId=3 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (118069, 3, 2, '7771', 'SPR');
END

-- Brown Acropol By Brown Hotels | HB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=118069 AND BoardId=3 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (118069, 3, 12, '7771', 'Suite');
END

-- Liber - Seashore Suites | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=120499 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (120499, 1, 2, '7153', 'SPR');
END

-- Liber - Seashore Suites | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=120499 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (120499, 1, 12, '7153', 'Suite');
END

-- MONTANA HOTEL | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=124995 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (124995, 1, 2, '7111', 'SPR');
END

-- MONTANA HOTEL | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=124995 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (124995, 1, 4, '7111', 'DLX');
END

-- MONTANA HOTEL | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=124995 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (124995, 1, 12, '7111', 'Suite');
END

-- MONTANA HOTEL | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=124995 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (124995, 2, 2, '7112', 'SPR');
END

-- MONTANA HOTEL | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=124995 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (124995, 2, 4, '7112', 'DLX');
END

-- MONTANA HOTEL | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=124995 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (124995, 2, 12, '7112', 'Suite');
END

-- Hotel Saint-Louis en l Isle | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=132492 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (132492, 1, 4, '7584', 'DLX');
END

-- Hotel Saint-Louis en l Isle | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=132492 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (132492, 1, 12, '7584', 'Suite');
END

-- Hotel Saint-Louis en l Isle | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=132492 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (132492, 2, 4, '7585', 'DLX');
END

-- Hotel Saint-Louis en l Isle | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=132492 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (132492, 2, 12, '7585', 'Suite');
END

-- Xperience Sea Breeze Resort | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=155768 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (155768, 1, 2, '7319', 'SPR');
END

-- Xperience Sea Breeze Resort | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=155768 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (155768, 2, 2, '7320', 'SPR');
END

-- Maxim Tel Aviv | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=156617 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (156617, 2, 2, '7152', 'SPR');
END

-- Maxim Tel Aviv | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=156617 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (156617, 2, 4, '7152', 'DLX');
END

-- Maxim Tel Aviv | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=156617 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (156617, 2, 12, '7152', 'Suite');
END

-- Brown TLV Urban Hotel  | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=161655 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (161655, 1, 4, '7730', 'DLX');
END

-- Brown TLV Urban Hotel  | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=161655 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (161655, 1, 12, '7730', 'Suite');
END

-- Brown TLV Urban Hotel  | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=161655 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (161655, 2, 4, '7731', 'DLX');
END

-- Brown TLV Urban Hotel  | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=161655 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (161655, 2, 12, '7731', 'Suite');
END

-- Abbatial Saint Germain | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=172918 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (172918, 1, 4, '7602', 'DLX');
END

-- Abbatial Saint Germain | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=172918 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (172918, 1, 12, '7602', 'Suite');
END

-- Abbatial Saint Germain | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=172918 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (172918, 2, 4, '7603', 'DLX');
END

-- Abbatial Saint Germain | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=172918 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (172918, 2, 12, '7603', 'Suite');
END

-- Hotel Vendome Saint Germain | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=173044 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (173044, 1, 4, '7590', 'DLX');
END

-- Hotel Vendome Saint Germain | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=173044 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (173044, 1, 12, '7590', 'Suite');
END

-- Hotel Vendome Saint Germain | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=173044 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (173044, 2, 4, '7591', 'DLX');
END

-- Hotel Vendome Saint Germain | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=173044 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (173044, 2, 12, '7591', 'Suite');
END

-- Cadet Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=173508 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (173508, 1, 2, '12064', 'SPR');
END

-- Cadet Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=173508 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (173508, 1, 4, '12064', 'DLX');
END

-- Hotel Edouard 6 - Gare Montparnasse | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=174010 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (174010, 1, 4, '7678', 'DLX');
END

-- Hotel Edouard 6 - Gare Montparnasse | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=174010 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (174010, 1, 12, '7678', 'Suite');
END

-- Hotel Edouard 6 - Gare Montparnasse | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=174010 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (174010, 2, 4, '7679', 'DLX');
END

-- Hotel Edouard 6 - Gare Montparnasse | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=174010 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (174010, 2, 12, '7679', 'Suite');
END

-- Club Quarters, Trafalgar Square | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=174266 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (174266, 1, 2, '7117', 'SPR');
END

-- Club Quarters, Trafalgar Square | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=174266 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (174266, 1, 4, '7117', 'DLX');
END

-- Club Quarters, Trafalgar Square | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=174266 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (174266, 1, 12, '7117', 'Suite');
END

-- Club Quarters, Trafalgar Square | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=174266 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (174266, 2, 2, '7118', 'SPR');
END

-- Club Quarters, Trafalgar Square | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=174266 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (174266, 2, 4, '7118', 'DLX');
END

-- Club Quarters, Trafalgar Square | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=174266 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (174266, 2, 12, '7118', 'Suite');
END

-- Select Hotel Rive Gauche | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=179578 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (179578, 1, 2, '7583', 'SPR');
END

-- Select Hotel Rive Gauche | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=179578 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (179578, 1, 12, '7583', 'Suite');
END

-- Hotel Maison Athénée | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=181089 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (181089, 1, 4, '7662', 'DLX');
END

-- Hotel Maison Athénée | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=181089 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (181089, 1, 12, '7662', 'Suite');
END

-- Hotel Maison Athénée | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=181089 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (181089, 2, 4, '7663', 'DLX');
END

-- Hotel Maison Athénée | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=181089 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (181089, 2, 12, '7663', 'Suite');
END

-- Hotel Le Regent Paris | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=190691 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (190691, 1, 4, '7666', 'DLX');
END

-- Hotel Le Regent Paris | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=190691 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (190691, 1, 12, '7666', 'Suite');
END

-- Hotel Le Regent Paris | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=190691 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (190691, 2, 4, '7667', 'DLX');
END

-- Hotel Le Regent Paris | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=190691 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (190691, 2, 12, '7667', 'Suite');
END

-- De Seine | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=190692 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (190692, 1, 4, '7693', 'DLX');
END

-- De Seine | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=190692 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (190692, 1, 12, '7693', 'Suite');
END

-- De Seine | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=190692 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (190692, 2, 4, '7694', 'DLX');
END

-- De Seine | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=190692 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (190692, 2, 12, '7694', 'Suite');
END

-- Hotel Royal Phare | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=190741 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (190741, 1, 4, '7664', 'DLX');
END

-- Hotel Royal Phare | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=190741 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (190741, 1, 12, '7664', 'Suite');
END

-- L'Ouest | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=190744 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (190744, 1, 4, '7531', 'DLX');
END

-- L'Ouest | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=190744 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (190744, 1, 12, '7531', 'Suite');
END

-- The Villa Casa Casuarina | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=193899 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (193899, 1, 2, '12035', 'SPR');
END

-- The Villa Casa Casuarina | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=193899 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (193899, 2, 2, '13168', 'SPR');
END

-- The Villa Casa Casuarina | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=193899 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (193899, 2, 4, '13168', 'DLX');
END

-- HOTEL DUO | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=194274 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (194274, 1, 4, '7588', 'DLX');
END

-- HOTEL DUO | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=194274 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (194274, 1, 12, '7588', 'Suite');
END

-- HOTEL DUO | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=194274 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (194274, 2, 4, '7589', 'DLX');
END

-- HOTEL DUO | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=194274 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (194274, 2, 12, '7589', 'Suite');
END

-- Hotel La Perle | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=194365 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (194365, 1, 4, '7549', 'DLX');
END

-- Hotel La Perle | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=194365 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (194365, 1, 12, '7549', 'Suite');
END

-- Port Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=196481 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (196481, 2, 2, '7138', 'SPR');
END

-- Port Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=196481 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (196481, 2, 4, '7138', 'DLX');
END

-- Port Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=196481 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (196481, 2, 12, '7138', 'Suite');
END

-- Saint-Roch | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=197163 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (197163, 1, 4, '7675', 'DLX');
END

-- Saint-Roch | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=197163 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (197163, 1, 12, '7675', 'Suite');
END

-- Home Latin | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=199232 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (199232, 1, 2, '7671', 'SPR');
END

-- Home Latin | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=199232 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (199232, 1, 4, '7671', 'DLX');
END

-- Home Latin | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=199232 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (199232, 1, 12, '7671', 'Suite');
END

-- Home Latin | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=199232 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (199232, 2, 2, '7672', 'SPR');
END

-- Home Latin | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=199232 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (199232, 2, 4, '7672', 'DLX');
END

-- Home Latin | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=199232 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (199232, 2, 12, '7672', 'Suite');
END

-- Hotel Flor Rivoli  | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=199631 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (199631, 1, 2, '7546', 'SPR');
END

-- Hotel Flor Rivoli  | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=199631 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (199631, 1, 4, '7546', 'DLX');
END

-- Hotel Flor Rivoli  | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=199631 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (199631, 1, 12, '7546', 'Suite');
END

-- Arbel Suites Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=205608 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (205608, 1, 2, '7149', 'SPR');
END

-- Arbel Suites Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=205608 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (205608, 1, 12, '7149', 'Suite');
END

-- Arbel Suites Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=205608 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (205608, 2, 2, '7150', 'SPR');
END

-- Arbel Suites Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=205608 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (205608, 2, 12, '7150', 'Suite');
END

-- Hotel Emile / Sevigne Hotel Paris | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=208326 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (208326, 1, 4, '7543', 'DLX');
END

-- Hotel Emile / Sevigne Hotel Paris | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=208326 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (208326, 1, 12, '7543', 'Suite');
END

-- Hotel Emile / Sevigne Hotel Paris | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=208326 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (208326, 2, 4, '7544', 'DLX');
END

-- Hotel Emile / Sevigne Hotel Paris | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=208326 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (208326, 2, 12, '7544', 'Suite');
END

-- Apex Temple Court Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=210263 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (210263, 1, 4, '7188', 'DLX');
END

-- Apex Temple Court Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=210263 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (210263, 1, 12, '7188', 'Suite');
END

-- Apex Temple Court Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=210263 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (210263, 2, 4, '7189', 'DLX');
END

-- Apex Temple Court Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=210263 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (210263, 2, 12, '7189', 'Suite');
END

-- SENTIDO REEF OASIS SENSES | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=212318 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (212318, 1, 4, '7323', 'DLX');
END

-- SENTIDO REEF OASIS SENSES | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=212318 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (212318, 1, 12, '7323', 'Suite');
END

-- SENTIDO REEF OASIS SENSES | AI/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=212318 AND BoardId=5 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (212318, 5, 4, '7324', 'DLX');
END

-- SENTIDO REEF OASIS SENSES | AI/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=212318 AND BoardId=5 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (212318, 5, 12, '7324', 'Suite');
END

-- Mandalay Bay Hotel & Casino | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=215712 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (215712, 1, 2, '7379', 'SPR');
END

-- Mandalay Bay Hotel & Casino | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=215712 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (215712, 1, 4, '7379', 'DLX');
END

-- Citadines Holborn-Covent Garden London | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=237161 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (237161, 1, 2, '7093', 'SPR');
END

-- Citadines Holborn-Covent Garden London | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=237161 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (237161, 1, 4, '7093', 'DLX');
END

-- Citadines Holborn-Covent Garden London | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=237161 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (237161, 1, 12, '7093', 'Suite');
END

-- Notebook Miami Beach | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=237547 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (237547, 1, 2, '12070', 'SPR');
END

-- Notebook Miami Beach | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=237547 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (237547, 1, 4, '12070', 'DLX');
END

-- Notebook Miami Beach | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=237547 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (237547, 1, 12, '12070', 'Suite');
END

-- Dream South Beach | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241025 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241025, 1, 2, '12060', 'SPR');
END

-- Dream South Beach | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241025 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241025, 1, 4, '12060', 'DLX');
END

-- JW Marriott Marquis Hotel Dubai | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241168 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241168, 1, 2, '6962', 'SPR');
END

-- JW Marriott Marquis Hotel Dubai | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241168 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241168, 1, 12, '6962', 'Suite');
END

-- JW Marriott Marquis Hotel Dubai | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241168 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241168, 2, 2, '6963', 'SPR');
END

-- JW Marriott Marquis Hotel Dubai | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241168 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241168, 2, 12, '6963', 'Suite');
END

-- Conrad Dubai | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241415 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241415, 1, 2, '7261', 'SPR');
END

-- Conrad Dubai | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241415 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241415, 1, 12, '7261', 'Suite');
END

-- Conrad Dubai | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241415 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241415, 2, 2, '7262', 'SPR');
END

-- Conrad Dubai | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241415 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241415, 2, 12, '7262', 'Suite');
END

-- Dolphin Viliage | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241446 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241446, 1, 2, '7629', 'SPR');
END

-- Dolphin Viliage | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241446 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241446, 1, 4, '7629', 'DLX');
END

-- Dolphin Viliage | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241446 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241446, 1, 12, '7629', 'Suite');
END

-- Dolphin Viliage | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241446 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241446, 2, 2, '7630', 'SPR');
END

-- Dolphin Viliage | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241446 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241446, 2, 4, '7630', 'DLX');
END

-- Dolphin Viliage | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=241446 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (241446, 2, 12, '7630', 'Suite');
END

-- The Mercer | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=253174 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (253174, 1, 2, '7070', 'SPR');
END

-- The Mercer | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=253174 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (253174, 1, 12, '7070', 'Suite');
END

-- The Mercer | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=253174 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (253174, 2, 2, '7071', 'SPR');
END

-- The Mercer | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=253174 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (253174, 2, 12, '7071', 'Suite');
END

-- Hilton Cabana Miami Beach | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=254198 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (254198, 1, 2, '12035', 'SPR');
END

-- Hilton Cabana Miami Beach | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=254198 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (254198, 2, 2, '13168', 'SPR');
END

-- Hilton Cabana Miami Beach | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=254198 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (254198, 2, 4, '13168', 'DLX');
END

-- Address Boulevard | RO/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=254941 AND BoardId=1 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (254941, 1, 1, '7215', 'Stnd');
END

-- Address Boulevard | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=254941 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (254941, 1, 2, '7215', 'SPR');
END

-- Address Boulevard | BB/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=254941 AND BoardId=2 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (254941, 2, 1, '7216', 'Stnd');
END

-- Address Boulevard | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=254941 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (254941, 2, 2, '7216', 'SPR');
END

-- Sloane Square Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=264084 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (264084, 1, 4, '7194', 'DLX');
END

-- Sloane Square Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=264084 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (264084, 1, 12, '7194', 'Suite');
END

-- Residence Suites | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=264523 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (264523, 1, 2, '7154', 'SPR');
END

-- Grandior Hotel Prague | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=265475 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (265475, 1, 2, '7383', 'SPR');
END

-- Grandior Hotel Prague | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=265475 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (265475, 1, 12, '7383', 'Suite');
END

-- Grandior Hotel Prague | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=265475 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (265475, 2, 2, '7384', 'SPR');
END

-- Grandior Hotel Prague | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=265475 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (265475, 2, 12, '7384', 'Suite');
END

-- Villa Ba Moshava By Brown (Formerly Arcadia Ba'Moshava Jerusalem) | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=266841 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (266841, 1, 4, '7754', 'DLX');
END

-- Villa Ba Moshava By Brown (Formerly Arcadia Ba'Moshava Jerusalem) | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=266841 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (266841, 1, 12, '7754', 'Suite');
END

-- Villa Ba Moshava By Brown (Formerly Arcadia Ba'Moshava Jerusalem) | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=266841 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (266841, 2, 4, '7755', 'DLX');
END

-- Villa Ba Moshava By Brown (Formerly Arcadia Ba'Moshava Jerusalem) | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=266841 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (266841, 2, 12, '7755', 'Suite');
END

-- Hôtel Gaythering | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=277280 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (277280, 1, 2, '12035', 'SPR');
END

-- Hôtel Gaythering | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=277280 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (277280, 2, 2, '13168', 'SPR');
END

-- Hôtel Gaythering | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=277280 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (277280, 2, 4, '13168', 'DLX');
END

-- Market House - An Atlas Boutique Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=285709 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (285709, 1, 4, '7141', 'DLX');
END

-- Market House - An Atlas Boutique Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=285709 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (285709, 1, 12, '7141', 'Suite');
END

-- Market House - An Atlas Boutique Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=285709 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (285709, 2, 4, '7142', 'DLX');
END

-- Market House - An Atlas Boutique Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=285709 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (285709, 2, 12, '7142', 'Suite');
END

-- Hotel Croydon | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=286236 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (286236, 1, 2, '12035', 'SPR');
END

-- Hotel Croydon | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=286236 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (286236, 2, 2, '13168', 'SPR');
END

-- Hotel Croydon | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=286236 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (286236, 2, 4, '13168', 'DLX');
END

-- The Gates Hotel South Beach - a DoubleTree by Hilton | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=301583 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (301583, 1, 2, '12035', 'SPR');
END

-- The Gates Hotel South Beach - a DoubleTree by Hilton | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=301583 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (301583, 2, 2, '13168', 'SPR');
END

-- The Gates Hotel South Beach - a DoubleTree by Hilton | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=301583 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (301583, 2, 4, '13168', 'DLX');
END

-- Hilton Garden Inn Miami South Beach | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=301640 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (301640, 1, 2, '12035', 'SPR');
END

-- Hilton Garden Inn Miami South Beach | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=301640 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (301640, 2, 2, '13168', 'SPR');
END

-- Hilton Garden Inn Miami South Beach | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=301640 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (301640, 2, 4, '13168', 'DLX');
END

-- Gale South Beach | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=301645 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (301645, 1, 2, '12035', 'SPR');
END

-- Gale South Beach | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=301645 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (301645, 2, 2, '13168', 'SPR');
END

-- Gale South Beach | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=301645 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (301645, 2, 4, '13168', 'DLX');
END

-- SUNRISE Arabian Beach Resort | RO/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=305323 AND BoardId=1 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (305323, 1, 1, '7313', 'Stnd');
END

-- SUNRISE Arabian Beach Resort | BB/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=305323 AND BoardId=2 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (305323, 2, 1, '7314', 'Stnd');
END

-- Shani Jerusalem | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=313608 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (313608, 1, 2, '7639', 'SPR');
END

-- Shani Jerusalem | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=313608 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (313608, 1, 4, '7639', 'DLX');
END

-- Shani Jerusalem | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=313608 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (313608, 2, 2, '7640', 'SPR');
END

-- Shani Jerusalem | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=313608 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (313608, 2, 4, '7640', 'DLX');
END

-- Hyatt Centric South Beach Miami (City View) | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=314212 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (314212, 1, 2, '12066', 'SPR');
END

-- Hyatt Centric South Beach Miami (City View) | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=314212 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (314212, 1, 12, '12066', 'Suite');
END

-- Esprit Saint Germain | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=316281 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (316281, 1, 4, '7669', 'DLX');
END

-- Esprit Saint Germain | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=316281 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (316281, 1, 12, '7669', 'Suite');
END

-- Esprit Saint Germain | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=316281 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (316281, 2, 4, '7670', 'DLX');
END

-- Esprit Saint Germain | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=316281 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (316281, 2, 12, '7670', 'Suite');
END

-- Brown Beach House | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=318831 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (318831, 2, 2, '7740', 'SPR');
END

-- Brown Beach House | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=318831 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (318831, 2, 12, '7740', 'Suite');
END

-- Taj Dubai Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=321314 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (321314, 1, 12, '7279', 'Suite');
END

-- Taj Dubai Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=321314 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (321314, 2, 12, '7280', 'Suite');
END

-- Habtoor Palace, LXR Hotels & Resorts (Ex. THE ST. REGIS) | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=324657 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (324657, 1, 2, '7213', 'SPR');
END

-- Habtoor Palace, LXR Hotels & Resorts (Ex. THE ST. REGIS) | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=324657 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (324657, 1, 12, '7213', 'Suite');
END

-- Habtoor Palace, LXR Hotels & Resorts (Ex. THE ST. REGIS) | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=324657 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (324657, 2, 2, '7214', 'SPR');
END

-- Habtoor Palace, LXR Hotels & Resorts (Ex. THE ST. REGIS) | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=324657 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (324657, 2, 12, '7214', 'Suite');
END

-- Eurostars Langford Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (333502, 1, 2, '12067', 'SPR');
END

-- Eurostars Langford Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (333502, 2, 2, '13159', 'SPR');
END

-- Eurostars Langford Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (333502, 2, 4, '13159', 'DLX');
END

-- Eurostars Langford Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (333502, 2, 12, '13159', 'Suite');
END

-- The Chess Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=348314 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (348314, 1, 4, '7594', 'DLX');
END

-- The Chess Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=348314 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (348314, 1, 12, '7594', 'Suite');
END

-- The Chess Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=348314 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (348314, 2, 4, '7595', 'DLX');
END

-- The Chess Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=348314 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (348314, 2, 12, '7595', 'Suite');
END

-- Park Plaza Waterloo | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=356213 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (356213, 1, 4, '7127', 'DLX');
END

-- Park Plaza Waterloo | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=356213 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (356213, 1, 12, '7127', 'Suite');
END

-- Park Plaza Waterloo | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=356213 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (356213, 2, 4, '7128', 'DLX');
END

-- Park Plaza Waterloo | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=356213 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (356213, 2, 12, '7128', 'Suite');
END

-- Villa Brown Jerusalem | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=360291 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (360291, 1, 2, '7765', 'SPR');
END

-- Villa Brown Jerusalem | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=360291 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (360291, 1, 12, '7765', 'Suite');
END

-- Villa Brown Jerusalem | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=360291 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (360291, 2, 2, '7766', 'SPR');
END

-- Villa Brown Jerusalem | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=360291 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (360291, 2, 12, '7766', 'Suite');
END

-- BROWN BEACH HOUSE DESIGN HOTEL | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=361242 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (361242, 1, 4, '7780', 'DLX');
END

-- BROWN BEACH HOUSE DESIGN HOTEL | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=361242 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (361242, 1, 12, '7780', 'Suite');
END

-- BROWN BEACH HOUSE DESIGN HOTEL | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=361242 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (361242, 2, 4, '7781', 'DLX');
END

-- BROWN BEACH HOUSE DESIGN HOTEL | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=361242 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (361242, 2, 12, '7781', 'Suite');
END

-- Hilton Dubai Al Habtoor City (Ex. Westin) | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=361657 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (361657, 1, 2, '7256', 'SPR');
END

-- Hilton Dubai Al Habtoor City (Ex. Westin) | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=361657 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (361657, 1, 12, '7256', 'Suite');
END

-- Hilton Dubai Al Habtoor City (Ex. Westin) | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=361657 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (361657, 2, 2, '7257', 'SPR');
END

-- Hilton Dubai Al Habtoor City (Ex. Westin) | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=361657 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (361657, 2, 12, '7257', 'Suite');
END

-- Sheraton Grand Hotel Dubai | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=361821 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (361821, 1, 2, '7275', 'SPR');
END

-- Sheraton Grand Hotel Dubai | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=361821 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (361821, 1, 12, '7275', 'Suite');
END

-- Sheraton Grand Hotel Dubai | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=361821 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (361821, 2, 2, '7276', 'SPR');
END

-- Sheraton Grand Hotel Dubai | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=361821 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (361821, 2, 12, '7276', 'Suite');
END

-- La Ville Hotel & Suites CITY WALK, Dubai, Autograph Collection | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=376247 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (376247, 1, 2, '7241', 'SPR');
END

-- La Ville Hotel & Suites CITY WALK, Dubai, Autograph Collection | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=376247 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (376247, 1, 12, '7241', 'Suite');
END

-- La Ville Hotel & Suites CITY WALK, Dubai, Autograph Collection | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=376247 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (376247, 2, 2, '7242', 'SPR');
END

-- La Ville Hotel & Suites CITY WALK, Dubai, Autograph Collection | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=376247 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (376247, 2, 12, '7242', 'Suite');
END

-- Grand Hotel Leveque | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=382417 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (382417, 1, 4, '7524', 'DLX');
END

-- Grand Hotel Leveque | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=382417 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (382417, 1, 12, '7524', 'Suite');
END

-- Grand Hotel Leveque | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=382417 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (382417, 2, 4, '7525', 'DLX');
END

-- Grand Hotel Leveque | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=382417 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (382417, 2, 12, '7525', 'Suite');
END

-- Dave Gordon - Son Of A Brown | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=382813 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (382813, 1, 2, '7750', 'SPR');
END

-- Dave Gordon - Son Of A Brown | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=382813 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (382813, 1, 12, '7750', 'Suite');
END

-- Dave Gordon - Son Of A Brown | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=382813 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (382813, 2, 2, '7751', 'SPR');
END

-- Dave Gordon - Son Of A Brown | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=382813 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (382813, 2, 12, '7751', 'Suite');
END

-- Iberostar Berkeley Shore Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=383277 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (383277, 1, 2, '12061', 'SPR');
END

-- Iberostar Berkeley Shore Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=383277 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (383277, 2, 2, '13168', 'SPR');
END

-- Iberostar Berkeley Shore Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=383277 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (383277, 2, 4, '13168', 'DLX');
END

-- Hotel Pierre Nicole | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=388433 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (388433, 1, 2, '7537', 'SPR');
END

-- Hotel Pierre Nicole | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=388433 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (388433, 1, 4, '7537', 'DLX');
END

-- Hotel Pierre Nicole | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=388433 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (388433, 1, 12, '7537', 'Suite');
END

-- Hotel Pierre Nicole | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=388433 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (388433, 2, 2, '7538', 'SPR');
END

-- Hotel Pierre Nicole | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=388433 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (388433, 2, 4, '7538', 'DLX');
END

-- Hotel Pierre Nicole | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=388433 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (388433, 2, 12, '7538', 'Suite');
END

-- Hotel du Loiret / Grand Hotel Paris | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=392590 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (392590, 1, 2, '7545', 'SPR');
END

-- Hotel du Loiret / Grand Hotel Paris | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=392590 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (392590, 1, 4, '7545', 'DLX');
END

-- Hotel du Loiret / Grand Hotel Paris | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=392590 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (392590, 1, 12, '7545', 'Suite');
END

-- MILLESIME HOTEL PARIS | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=392596 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (392596, 1, 4, '7600', 'DLX');
END

-- MILLESIME HOTEL PARIS | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=392596 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (392596, 1, 12, '7600', 'Suite');
END

-- MILLESIME HOTEL PARIS | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=392596 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (392596, 2, 4, '7601', 'DLX');
END

-- MILLESIME HOTEL PARIS | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=392596 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (392596, 2, 12, '7601', 'Suite');
END

-- JEANNE D'ARC MARAIS | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=393267 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (393267, 1, 4, '7592', 'DLX');
END

-- JEANNE D'ARC MARAIS | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=393267 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (393267, 1, 12, '7592', 'Suite');
END

-- JEANNE D'ARC MARAIS | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=393267 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (393267, 2, 4, '7593', 'DLX');
END

-- JEANNE D'ARC MARAIS | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=393267 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (393267, 2, 12, '7593', 'Suite');
END

--  Daria - Haon Beach Hotel (ex. Yama Hotel; Kfar Kinneret)  | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=404578 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (404578, 1, 2, '7641', 'SPR');
END

--  Daria - Haon Beach Hotel (ex. Yama Hotel; Kfar Kinneret)  | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=404578 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (404578, 1, 4, '7641', 'DLX');
END

--  Daria - Haon Beach Hotel (ex. Yama Hotel; Kfar Kinneret)  | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=404578 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (404578, 1, 12, '7641', 'Suite');
END

--  Daria - Haon Beach Hotel (ex. Yama Hotel; Kfar Kinneret)  | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=404578 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (404578, 2, 2, '7642', 'SPR');
END

--  Daria - Haon Beach Hotel (ex. Yama Hotel; Kfar Kinneret)  | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=404578 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (404578, 2, 4, '7642', 'DLX');
END

--  Daria - Haon Beach Hotel (ex. Yama Hotel; Kfar Kinneret)  | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=404578 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (404578, 2, 12, '7642', 'Suite');
END

-- Marlin Waterloo | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=407878 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (407878, 1, 2, '7131', 'SPR');
END

-- Marlin Waterloo | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=407878 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (407878, 1, 12, '7131', 'Suite');
END

-- Marlin Waterloo | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=407878 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (407878, 2, 2, '7132', 'SPR');
END

-- Marlin Waterloo | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=407878 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (407878, 2, 12, '7132', 'Suite');
END

-- Canal Central Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=408350 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (408350, 1, 12, '7224', 'Suite');
END

-- Canal Central Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=408350 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (408350, 2, 12, '7225', 'Suite');
END

-- Charmillion Club Resort | RO/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=412558 AND BoardId=1 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (412558, 1, 1, '7317', 'Stnd');
END

-- Charmillion Club Resort | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=412558 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (412558, 1, 12, '7317', 'Suite');
END

-- Charmillion Club Resort | BB/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=412558 AND BoardId=2 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (412558, 2, 1, '7318', 'Stnd');
END

-- Charmillion Club Resort | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=412558 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (412558, 2, 12, '7318', 'Suite');
END

-- Charmillion Club Resort | AI/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=412558 AND BoardId=5 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (412558, 5, 1, '7846', 'Stnd');
END

-- Charmillion Club Resort | AI/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=412558 AND BoardId=5 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (412558, 5, 12, '7846', 'Suite');
END

-- Hotel Belleza | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=414146 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (414146, 1, 2, '12035', 'SPR');
END

-- Hotel Belleza | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=414146 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (414146, 2, 2, '13168', 'SPR');
END

-- Hotel Belleza | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=414146 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (414146, 2, 4, '13168', 'DLX');
END

-- Hotel de Roubaix | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=415363 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (415363, 1, 2, '7522', 'SPR');
END

-- Hotel de Roubaix | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=415363 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (415363, 1, 4, '7522', 'DLX');
END

-- Hotel de Roubaix | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=415363 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (415363, 1, 12, '7522', 'Suite');
END

-- Hotel de Roubaix | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=415363 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (415363, 2, 2, '7523', 'SPR');
END

-- Hotel de Roubaix | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=415363 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (415363, 2, 4, '7523', 'DLX');
END

-- Hotel de Roubaix | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=415363 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (415363, 2, 12, '7523', 'Suite');
END

-- DAMAC Maison Royale The Distinction | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=436699 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (436699, 1, 2, '7249', 'SPR');
END

-- Sofitel Dubai Downtown | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=437872 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (437872, 1, 2, '7254', 'SPR');
END

-- Sofitel Dubai Downtown | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=437872 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (437872, 1, 12, '7254', 'Suite');
END

-- Sofitel Dubai Downtown | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=437872 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (437872, 2, 2, '7255', 'SPR');
END

-- Sofitel Dubai Downtown | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=437872 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (437872, 2, 12, '7255', 'Suite');
END

-- Hotel National Des Arts et Metiers | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=446867 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (446867, 1, 4, '7586', 'DLX');
END

-- Hotel National Des Arts et Metiers | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=446867 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (446867, 1, 12, '7586', 'Suite');
END

-- Hotel National Des Arts et Metiers | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=446867 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (446867, 2, 4, '7587', 'DLX');
END

-- Hotel National Des Arts et Metiers | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=446867 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (446867, 2, 12, '7587', 'Suite');
END

-- Poli House By Brown Hotels | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=475912 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (475912, 1, 2, '7738', 'SPR');
END

-- Poli House By Brown Hotels | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=475912 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (475912, 1, 12, '7738', 'Suite');
END

-- Poli House By Brown Hotels | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=475912 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (475912, 2, 2, '7739', 'SPR');
END

-- Poli House By Brown Hotels | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=475912 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (475912, 2, 12, '7739', 'Suite');
END

-- Lighthouse By Brown Hotels | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=700403 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (700403, 1, 4, '7732', 'DLX');
END

-- Lighthouse By Brown Hotels | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=700403 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (700403, 1, 12, '7732', 'Suite');
END

-- Lighthouse By Brown Hotels | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=700403 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (700403, 2, 4, '7733', 'DLX');
END

-- Lighthouse By Brown Hotels | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=700403 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (700403, 2, 12, '7733', 'Suite');
END

-- Generator Miami | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=701659 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (701659, 1, 2, '12035', 'SPR');
END

-- Generator Miami | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=701659 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (701659, 2, 2, '13168', 'SPR');
END

-- Generator Miami | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=701659 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (701659, 2, 4, '13168', 'DLX');
END

-- Geula Suites | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=706661 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (706661, 1, 2, '7181', 'SPR');
END

-- Geula Suites | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=706661 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (706661, 1, 4, '7181', 'DLX');
END

-- Geula Suites | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=706661 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (706661, 1, 12, '7181', 'Suite');
END

-- DoubleTree by Hilton Miami Doral | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=733781 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (733781, 1, 2, '12035', 'SPR');
END

-- DoubleTree by Hilton Miami Doral | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=733781 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (733781, 2, 2, '13168', 'SPR');
END

-- DoubleTree by Hilton Miami Doral | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=733781 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (733781, 2, 4, '13168', 'DLX');
END

-- Residence 26 | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=766812 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (766812, 1, 2, '7182', 'SPR');
END

-- Residence 26 | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=766812 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (766812, 1, 4, '7182', 'DLX');
END

-- Address Downtown | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825006 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825006, 1, 2, '7231', 'SPR');
END

-- Address Downtown | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825006 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825006, 1, 12, '7231', 'Suite');
END

-- Address Downtown | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825006 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825006, 2, 2, '7232', 'SPR');
END

-- Address Downtown | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825006 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825006, 2, 12, '7232', 'Suite');
END

-- Baywatch Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825207 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825207, 1, 2, '7625', 'SPR');
END

-- Baywatch Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825207 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825207, 1, 4, '7625', 'DLX');
END

-- Baywatch Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825207 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825207, 1, 12, '7625', 'Suite');
END

-- Baywatch Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825207 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825207, 2, 2, '7626', 'SPR');
END

-- Baywatch Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825207 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825207, 2, 4, '7626', 'DLX');
END

-- Baywatch Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825207 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825207, 2, 12, '7626', 'Suite');
END

-- MERIT KENSINGTON | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825952 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825952, 1, 2, '7113', 'SPR');
END

-- MERIT KENSINGTON | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825952 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825952, 1, 4, '7113', 'DLX');
END

-- MERIT KENSINGTON | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825952 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825952, 1, 12, '7113', 'Suite');
END

-- MERIT KENSINGTON | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825952 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825952, 2, 2, '7114', 'SPR');
END

-- MERIT KENSINGTON | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825952 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825952, 2, 4, '7114', 'DLX');
END

-- MERIT KENSINGTON | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=825952 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (825952, 2, 12, '7114', 'Suite');
END

-- Hotel Du Champ de Mars | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826044 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826044, 1, 4, '7608', 'DLX');
END

-- Hotel Du Champ de Mars | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826044 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826044, 1, 12, '7608', 'Suite');
END

-- Waldorf Astoria Dubai International Financial Centre | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826068 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826068, 1, 2, '7222', 'SPR');
END

-- Waldorf Astoria Dubai International Financial Centre | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826068 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826068, 2, 2, '7223', 'SPR');
END

-- Radisson Blu Hotel Dubai Waterfront | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826577 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826577, 1, 4, '7247', 'DLX');
END

-- Radisson Blu Hotel Dubai Waterfront | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826577 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826577, 1, 12, '7247', 'Suite');
END

-- Radisson Blu Hotel Dubai Waterfront | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826577 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826577, 2, 4, '7248', 'DLX');
END

-- Radisson Blu Hotel Dubai Waterfront | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826577 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826577, 2, 12, '7248', 'Suite');
END

-- Grand Millennium Business Bay | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826585 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826585, 1, 4, '7211', 'DLX');
END

-- Grand Millennium Business Bay | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826585 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826585, 1, 12, '7211', 'Suite');
END

-- Grand Millennium Business Bay | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826585 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826585, 2, 4, '7212', 'DLX');
END

-- Grand Millennium Business Bay | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826585 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826585, 2, 12, '7212', 'Suite');
END

-- Paramount Hotel Dubai | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826607 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826607, 1, 2, '7269', 'SPR');
END

-- Paramount Hotel Dubai | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826607 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826607, 1, 4, '7269', 'DLX');
END

-- Paramount Hotel Dubai | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826607 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826607, 2, 2, '7270', 'SPR');
END

-- Paramount Hotel Dubai | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826607 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826607, 2, 4, '7270', 'DLX');
END

-- Radisson Blu, Dubai Canal View | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826608 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826608, 1, 4, '7235', 'DLX');
END

-- Radisson Blu, Dubai Canal View | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826608 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826608, 1, 12, '7235', 'Suite');
END

-- Radisson Blu, Dubai Canal View | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826608 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826608, 2, 4, '7236', 'DLX');
END

-- Radisson Blu, Dubai Canal View | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826608 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826608, 2, 12, '7236', 'Suite');
END

-- Brown Seaside By Brown Hotels | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826694 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826694, 1, 2, '7746', 'SPR');
END

-- Brown Seaside By Brown Hotels | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826694 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826694, 1, 12, '7746', 'Suite');
END

-- Brown Seaside By Brown Hotels | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826694 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826694, 2, 2, '7747', 'SPR');
END

-- Brown Seaside By Brown Hotels | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826694 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826694, 2, 12, '7747', 'Suite');
END

-- Hotel BoBo by Brown Hotels | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826697 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826697, 1, 2, '7734', 'SPR');
END

-- Hotel BoBo by Brown Hotels | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826697 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826697, 1, 12, '7734', 'Suite');
END

-- Hotel BoBo by Brown Hotels | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826697 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826697, 2, 2, '7735', 'SPR');
END

-- Hotel BoBo by Brown Hotels | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826697 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826697, 2, 12, '7735', 'Suite');
END

-- Dave Levinsky - Son of a Brown | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826698 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826698, 1, 2, '7752', 'SPR');
END

-- Dave Levinsky - Son of a Brown | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826698 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826698, 1, 4, '7752', 'DLX');
END

-- Dave Levinsky - Son of a Brown | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826698 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826698, 1, 12, '7752', 'Suite');
END

-- Dave Levinsky - Son of a Brown | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826698 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826698, 2, 2, '7753', 'SPR');
END

-- Dave Levinsky - Son of a Brown | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826698 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826698, 2, 4, '7753', 'DLX');
END

-- Dave Levinsky - Son of a Brown | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826698 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826698, 2, 12, '7753', 'Suite');
END

-- Theodor By Brown Hotels | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826703 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826703, 1, 4, '7748', 'DLX');
END

-- Theodor By Brown Hotels | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826703 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826703, 1, 12, '7748', 'Suite');
END

-- Theodor By Brown Hotels | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826703 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826703, 2, 4, '7749', 'DLX');
END

-- Theodor By Brown Hotels | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=826703 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (826703, 2, 12, '7749', 'Suite');
END

-- Hotel Heleni Jerusalem (by Olive)  | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827204 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827204, 1, 2, '7617', 'SPR');
END

-- Hotel Heleni Jerusalem (by Olive)  | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827204 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827204, 1, 4, '7617', 'DLX');
END

-- Hotel Heleni Jerusalem (by Olive)  | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827204 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827204, 1, 12, '7617', 'Suite');
END

-- Hotel Heleni Jerusalem (by Olive)  | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827204 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827204, 2, 2, '7618', 'SPR');
END

-- Hotel Heleni Jerusalem (by Olive)  | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827204 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827204, 2, 4, '7618', 'DLX');
END

-- Hotel Heleni Jerusalem (by Olive)  | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827204 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827204, 2, 12, '7618', 'Suite');
END

-- Address Sky View | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827532 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827532, 1, 2, '7226', 'SPR');
END

-- Address Sky View | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827532 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827532, 1, 12, '7226', 'Suite');
END

-- Address Sky View | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827532 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827532, 2, 2, '7227', 'SPR');
END

-- Address Sky View | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827532 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827532, 2, 12, '7227', 'Suite');
END

-- BROWN JLM | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827543 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827543, 1, 2, '7756', 'SPR');
END

-- BROWN JLM | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827543 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827543, 1, 12, '7756', 'Suite');
END

-- BROWN JLM | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827543 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827543, 2, 2, '7757', 'SPR');
END

-- BROWN JLM | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827543 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827543, 2, 12, '7757', 'Suite');
END

-- Jaz Mirabel Resort | AI/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827553 AND BoardId=5 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827553, 5, 1, '7333', 'Stnd');
END

-- Jaz Mirabel Resort | AI/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827553 AND BoardId=5 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827553, 5, 12, '7333', 'Suite');
END

-- Albatros Aqua Park Sharm El Sheikh | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827554 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827554, 1, 2, '7315', 'SPR');
END

-- Albatros Aqua Park Sharm El Sheikh | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827554 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827554, 1, 12, '7315', 'Suite');
END

-- Albatros Aqua Park Sharm El Sheikh | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827554 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827554, 2, 2, '7316', 'SPR');
END

-- Albatros Aqua Park Sharm El Sheikh | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827554 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827554, 2, 12, '7316', 'Suite');
END

-- Albatros Aqua Park Sharm El Sheikh | AI/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827554 AND BoardId=5 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827554, 5, 2, '7888', 'SPR');
END

-- Albatros Aqua Park Sharm El Sheikh | AI/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827554 AND BoardId=5 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827554, 5, 12, '7888', 'Suite');
END

-- Brown Machne Yehuda   | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827688 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827688, 1, 4, '7758', 'DLX');
END

-- Brown Machne Yehuda   | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827688 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827688, 1, 12, '7758', 'Suite');
END

-- Brown Machne Yehuda   | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827688 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827688, 2, 4, '7759', 'DLX');
END

-- Brown Machne Yehuda   | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827688 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827688, 2, 12, '7759', 'Suite');
END

-- ibis Styles London Ealing | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827737 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827737, 1, 2, '7076', 'SPR');
END

-- ibis Styles London Ealing | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827737 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827737, 1, 4, '7076', 'DLX');
END

-- ibis Styles London Ealing | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827737 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827737, 1, 12, '7076', 'Suite');
END

-- ibis Styles London Ealing | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827737 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827737, 2, 2, '7077', 'SPR');
END

-- ibis Styles London Ealing | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827737 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827737, 2, 4, '7077', 'DLX');
END

-- ibis Styles London Ealing | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827737 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827737, 2, 12, '7077', 'Suite');
END

-- Hotel Indigo Dubai Downtown | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827752 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827752, 1, 12, '7267', 'Suite');
END

-- Hotel Indigo Dubai Downtown | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=827752 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (827752, 2, 12, '7268', 'Suite');
END

-- Olive Gilboa   | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839231 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839231, 1, 2, '7631', 'SPR');
END

-- Olive Gilboa   | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839231 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839231, 1, 4, '7631', 'DLX');
END

-- Olive Gilboa   | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839231 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839231, 1, 12, '7631', 'Suite');
END

-- Olive Gilboa   | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839231 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839231, 2, 2, '7632', 'SPR');
END

-- Olive Gilboa   | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839231 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839231, 2, 4, '7632', 'DLX');
END

-- Olive Gilboa   | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839231 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839231, 2, 12, '7632', 'Suite');
END

-- Rimonim Aquaduct Hotel  | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839232 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839232, 1, 2, '7637', 'SPR');
END

-- Rimonim Aquaduct Hotel  | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839232 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839232, 1, 12, '7637', 'Suite');
END

-- Rimonim Aquaduct Hotel  | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839232 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839232, 2, 2, '7638', 'SPR');
END

-- Rimonim Aquaduct Hotel  | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839232 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839232, 2, 12, '7638', 'Suite');
END

-- Olive Tlv 88 Sea Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839233 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839233, 1, 2, '7611', 'SPR');
END

-- Olive Tlv 88 Sea Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839233 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839233, 1, 4, '7611', 'DLX');
END

-- Olive Tlv 88 Sea Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839233 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839233, 1, 12, '7611', 'Suite');
END

-- Olive Tlv 88 Sea Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839233 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839233, 2, 2, '7612', 'SPR');
END

-- Olive Tlv 88 Sea Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839233 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839233, 2, 4, '7612', 'DLX');
END

-- Olive Tlv 88 Sea Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839233 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839233, 2, 12, '7612', 'Suite');
END

-- Olive The White House   | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839234 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839234, 1, 2, '7609', 'SPR');
END

-- Olive The White House   | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839234 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839234, 1, 4, '7609', 'DLX');
END

-- Olive The White House   | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839234 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839234, 1, 12, '7609', 'Suite');
END

-- Olive The White House   | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839234 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839234, 2, 2, '7610', 'SPR');
END

-- Olive The White House   | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839234 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839234, 2, 4, '7610', 'DLX');
END

-- Olive The White House   | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839234 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839234, 2, 12, '7610', 'Suite');
END

-- Olive Beer Garden Hotel  | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839235 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839235, 1, 2, '7613', 'SPR');
END

-- Olive Beer Garden Hotel  | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839235 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839235, 1, 4, '7613', 'DLX');
END

-- Olive Beer Garden Hotel  | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839235 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839235, 1, 12, '7613', 'Suite');
END

-- Olive Beer Garden Hotel  | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839235 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839235, 2, 2, '7614', 'SPR');
END

-- Olive Beer Garden Hotel  | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839235 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839235, 2, 4, '7614', 'DLX');
END

-- Olive Beer Garden Hotel  | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839235 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839235, 2, 12, '7614', 'Suite');
END

-- Rimonim Madison Hotel Nahariya  | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839236 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839236, 1, 4, '7635', 'DLX');
END

-- Rimonim Madison Hotel Nahariya  | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839236 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839236, 1, 12, '7635', 'Suite');
END

-- Rimonim Madison Hotel Nahariya  | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839236 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839236, 2, 4, '7636', 'DLX');
END

-- Rimonim Madison Hotel Nahariya  | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839236 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839236, 2, 12, '7636', 'Suite');
END

-- Olive Boutique Hotel Nahariya | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839237 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839237, 1, 2, '7627', 'SPR');
END

-- Olive Boutique Hotel Nahariya | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839237 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839237, 1, 4, '7627', 'DLX');
END

-- Olive Boutique Hotel Nahariya | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839237 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839237, 1, 12, '7627', 'Suite');
END

-- Olive Boutique Hotel Nahariya | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839237 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839237, 2, 2, '7628', 'SPR');
END

-- Olive Boutique Hotel Nahariya | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839237 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839237, 2, 4, '7628', 'DLX');
END

-- Olive Boutique Hotel Nahariya | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839237 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839237, 2, 12, '7628', 'Suite');
END

-- Olive Gordon By The Beach  | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839239 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839239, 1, 2, '7615', 'SPR');
END

-- Olive Gordon By The Beach  | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839239 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839239, 1, 4, '7615', 'DLX');
END

-- Olive Gordon By The Beach  | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839239 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839239, 1, 12, '7615', 'Suite');
END

-- Olive Gordon By The Beach  | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839239 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839239, 2, 2, '7616', 'SPR');
END

-- Olive Gordon By The Beach  | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839239 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839239, 2, 4, '7616', 'DLX');
END

-- Olive Gordon By The Beach  | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839239 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839239, 2, 12, '7616', 'Suite');
END

-- Villa Bakfar | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839242 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839242, 1, 2, '7633', 'SPR');
END

-- Villa Bakfar | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839242 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839242, 1, 4, '7633', 'DLX');
END

-- Villa Bakfar | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839242 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839242, 1, 12, '7633', 'Suite');
END

-- Villa Bakfar | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839242 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839242, 2, 2, '7634', 'SPR');
END

-- Villa Bakfar | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839242 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839242, 2, 4, '7634', 'DLX');
END

-- Villa Bakfar | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=839242 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (839242, 2, 12, '7634', 'Suite');
END

-- PULLMAN DUBAI DOWNTOWN HOTEL | RO/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842332 AND BoardId=1 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842332, 1, 1, '7263', 'Stnd');
END

-- PULLMAN DUBAI DOWNTOWN HOTEL | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842332 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842332, 1, 12, '7263', 'Suite');
END

-- PULLMAN DUBAI DOWNTOWN HOTEL | BB/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842332 AND BoardId=2 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842332, 2, 1, '7264', 'Stnd');
END

-- PULLMAN DUBAI DOWNTOWN HOTEL | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842332 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842332, 2, 12, '7264', 'Suite');
END

-- Golden House By Brown Hotels | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842529 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842529, 1, 4, '7741', 'DLX');
END

-- Golden House By Brown Hotels | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842529 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842529, 1, 12, '7741', 'Suite');
END

-- Golden House By Brown Hotels | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842529 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842529, 2, 4, '7742', 'DLX');
END

-- Golden House By Brown Hotels | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842529 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842529, 2, 12, '7742', 'Suite');
END

-- Villa Brown Tel Aviv | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842530 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842530, 1, 2, '7745', 'SPR');
END

-- Villa Brown Tel Aviv | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842530 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842530, 1, 4, '7745', 'DLX');
END

-- Villa Brown Tel Aviv | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842530 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842530, 1, 12, '7745', 'Suite');
END

-- SLS Dubai Hotel & Residences | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842608 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842608, 1, 2, '7243', 'SPR');
END

-- SLS Dubai Hotel & Residences | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842608 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842608, 1, 4, '7243', 'DLX');
END

-- SLS Dubai Hotel & Residences | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842608 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842608, 2, 2, '7244', 'SPR');
END

-- SLS Dubai Hotel & Residences | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=842608 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (842608, 2, 4, '7244', 'DLX');
END

-- Dave Red Athens - Son Of A Brown | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845261 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845261, 1, 2, '7774', 'SPR');
END

-- Dave Red Athens - Son Of A Brown | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845261 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845261, 1, 4, '7774', 'DLX');
END

-- Dave Red Athens - Son Of A Brown | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845261 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845261, 2, 2, '7775', 'SPR');
END

-- Dave Red Athens - Son Of A Brown | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845261 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845261, 2, 4, '7775', 'DLX');
END

-- Debrah Brown Tel-Aviv | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845354 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845354, 1, 2, '7736', 'SPR');
END

-- Debrah Brown Tel-Aviv | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845354 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845354, 1, 12, '7736', 'Suite');
END

-- Debrah Brown Tel-Aviv | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845354 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845354, 2, 2, '7737', 'SPR');
END

-- Debrah Brown Tel-Aviv | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845354 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845354, 2, 12, '7737', 'Suite');
END

-- Villa Brown Ermou hotel a member of Brown Hotels | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845364 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845364, 1, 2, '7772', 'SPR');
END

-- Villa Brown Ermou hotel a member of Brown Hotels | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845364 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845364, 1, 12, '7772', 'Suite');
END

-- Villa Brown Ermou hotel a member of Brown Hotels | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845364 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845364, 2, 2, '7773', 'SPR');
END

-- Villa Brown Ermou hotel a member of Brown Hotels | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845364 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845364, 2, 12, '7773', 'Suite');
END

-- Brown Beach Corinthia a member of Brown Hotels   | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845365 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845365, 1, 2, '7778', 'SPR');
END

-- Brown Beach Corinthia a member of Brown Hotels   | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845365 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845365, 1, 12, '7778', 'Suite');
END

-- Brown Beach Corinthia a member of Brown Hotels   | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845365 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845365, 2, 2, '7779', 'SPR');
END

-- Brown Beach Corinthia a member of Brown Hotels   | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=845365 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (845365, 2, 12, '7779', 'Suite');
END

-- Brown Brut A Member Of Brown Hotels | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846048 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846048, 1, 2, '7743', 'SPR');
END

-- Brown Brut A Member Of Brown Hotels | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846048 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846048, 1, 12, '7743', 'Suite');
END

-- Brown Brut A Member Of Brown Hotels | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846048 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846048, 2, 2, '7744', 'SPR');
END

-- Brown Brut A Member Of Brown Hotels | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846048 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846048, 2, 12, '7744', 'Suite');
END

-- Ink Hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846050 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846050, 1, 12, '7145', 'Suite');
END

-- Ink Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846050 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846050, 2, 12, '7146', 'Suite');
END

-- HYATT CENTRIC JUMEIRAH DUBAI | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846098 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846098, 1, 2, '7239', 'SPR');
END

-- HYATT CENTRIC JUMEIRAH DUBAI | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846098 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846098, 2, 2, '7240', 'SPR');
END

-- 25HOURS HOTEL DUBAI ONE CENTRAL | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846102 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846102, 1, 2, '7265', 'SPR');
END

-- 25HOURS HOTEL DUBAI ONE CENTRAL | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846102 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846102, 1, 4, '7265', 'DLX');
END

-- 25HOURS HOTEL DUBAI ONE CENTRAL | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846102 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846102, 2, 2, '7266', 'SPR');
END

-- 25HOURS HOTEL DUBAI ONE CENTRAL | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846102 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846102, 2, 4, '7266', 'DLX');
END

-- Paramount Hotel Midtown | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846140 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846140, 1, 2, '7277', 'SPR');
END

-- Paramount Hotel Midtown | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846140 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846140, 1, 4, '7277', 'DLX');
END

-- Paramount Hotel Midtown | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846140 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846140, 2, 2, '7278', 'SPR');
END

-- Paramount Hotel Midtown | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846140 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846140, 2, 4, '7278', 'DLX');
END

-- The Grand at Trafalgar Square | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846278 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846278, 1, 2, '7119', 'SPR');
END

-- The Grand at Trafalgar Square | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846278 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846278, 1, 4, '7119', 'DLX');
END

-- The Grand at Trafalgar Square | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846278 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846278, 1, 12, '7119', 'Suite');
END

-- The Grand at Trafalgar Square | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846278 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846278, 2, 2, '7120', 'SPR');
END

-- The Grand at Trafalgar Square | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846278 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846278, 2, 4, '7120', 'DLX');
END

-- The Grand at Trafalgar Square | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846278 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846278, 2, 12, '7120', 'Suite');
END

-- Kimpton Hotel Palomar South Beach | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846428 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846428, 1, 2, '12035', 'SPR');
END

-- Kimpton Hotel Palomar South Beach | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846428 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846428, 2, 2, '13168', 'SPR');
END

-- Kimpton Hotel Palomar South Beach | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846428 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846428, 2, 4, '13168', 'DLX');
END

-- The Dubai EDITION | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846488 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846488, 1, 2, '7250', 'SPR');
END

-- The Dubai EDITION | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846488 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846488, 1, 12, '7250', 'Suite');
END

-- The Dubai EDITION | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846488 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846488, 2, 2, '7251', 'SPR');
END

-- The Dubai EDITION | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846488 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846488, 2, 12, '7251', 'Suite');
END

-- Brown Lighthouse Athens, A Member Of Brown Hotels, Athens | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846944 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846944, 1, 2, '7767', 'SPR');
END

-- Brown Lighthouse Athens, A Member Of Brown Hotels, Athens | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846944 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846944, 1, 12, '7767', 'Suite');
END

-- Brown Lighthouse Athens, A Member Of Brown Hotels, Athens | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846944 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846944, 2, 2, '7768', 'SPR');
END

-- Brown Lighthouse Athens, A Member Of Brown Hotels, Athens | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=846944 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (846944, 2, 12, '7768', 'Suite');
END

-- Brown Kubic, a member of Brown Hotels | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=847409 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (847409, 1, 2, '7776', 'SPR');
END

-- Brown Kubic, a member of Brown Hotels | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=847409 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (847409, 1, 4, '7776', 'DLX');
END

-- Brown Kubic, a member of Brown Hotels | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=847409 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (847409, 1, 12, '7776', 'Suite');
END

-- Brown Kubic, a member of Brown Hotels | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=847409 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (847409, 2, 2, '7777', 'SPR');
END

-- Brown Kubic, a member of Brown Hotels | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=847409 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (847409, 2, 4, '7777', 'DLX');
END

-- Brown Kubic, a member of Brown Hotels | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=847409 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (847409, 2, 12, '7777', 'Suite');
END

-- Glamping Mia | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=847726 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (847726, 1, 2, '7622', 'SPR');
END

-- Glamping Mia | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=847726 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (847726, 1, 4, '7622', 'DLX');
END

-- Glamping Mia | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=847726 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (847726, 1, 12, '7622', 'Suite');
END

-- Glamping Mia | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=847726 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (847726, 2, 2, '7623', 'SPR');
END

-- Glamping Mia | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=847726 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (847726, 2, 4, '7623', 'DLX');
END

-- Glamping Mia | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=847726 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (847726, 2, 12, '7623', 'Suite');
END

-- The Gabriel Miami South Beach, Curio Collection by Hilton | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=848677 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (848677, 1, 2, '12075', 'SPR');
END

-- THE LANDON BAY HARBOR | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=851633 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (851633, 1, 2, '12035', 'SPR');
END

-- THE LANDON BAY HARBOR | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=851633 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (851633, 2, 2, '13168', 'SPR');
END

-- THE LANDON BAY HARBOR | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=851633 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (851633, 2, 4, '13168', 'DLX');
END

-- SERENA Hotel Aventura Miami, Tapestry Collection by Hilton | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=851939 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (851939, 1, 2, '12035', 'SPR');
END

-- SERENA Hotel Aventura Miami, Tapestry Collection by Hilton | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=851939 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (851939, 2, 2, '13168', 'SPR');
END

-- SERENA Hotel Aventura Miami, Tapestry Collection by Hilton | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=851939 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (851939, 2, 4, '13168', 'DLX');
END

-- SLS LUX Brickell | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (852120, 1, 2, '12035', 'SPR');
END

-- SLS LUX Brickell | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (852120, 2, 2, '13168', 'SPR');
END

-- SLS LUX Brickell | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (852120, 2, 4, '13168', 'DLX');
END

-- Gale Miami Hotel and Residences | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=852725 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (852725, 1, 2, '12035', 'SPR');
END

-- Gale Miami Hotel and Residences | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=852725 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (852725, 2, 2, '13168', 'SPR');
END

-- Gale Miami Hotel and Residences | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=852725 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (852725, 2, 4, '13168', 'DLX');
END

-- Atwell Suites Miami Brickell | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=853382 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (853382, 1, 2, '12068', 'SPR');
END

-- Atwell Suites Miami Brickell | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=853382 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (853382, 1, 4, '12068', 'DLX');
END

-- citizenM Miami South Beach | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=854710 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (854710, 1, 2, '12035', 'SPR');
END

-- citizenM Miami South Beach | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=854710 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (854710, 2, 2, '13168', 'SPR');
END

-- citizenM Miami South Beach | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=854710 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (854710, 2, 4, '13168', 'DLX');
END

-- Hampton Inn Miami Beach - Mid Beach | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=854875 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (854875, 1, 2, '12074', 'SPR');
END

-- Hampton Inn Miami Beach - Mid Beach | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=854875 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (854875, 1, 4, '12074', 'DLX');
END

-- Hampton Inn Miami Beach - Mid Beach | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=854875 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (854875, 1, 12, '12074', 'Suite');
END

-- citizenM Miami Brickell hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=854881 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (854881, 1, 2, '12043', 'SPR');
END

-- citizenM Miami Brickell hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=854881 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (854881, 1, 4, '12043', 'DLX');
END

-- citizenM Miami Brickell hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=854881 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (854881, 1, 12, '12043', 'Suite');
END

-- The Albion Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=855711 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (855711, 1, 2, '12035', 'SPR');
END

-- The Albion Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=855711 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (855711, 2, 2, '13168', 'SPR');
END

-- The Albion Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=855711 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (855711, 2, 4, '13168', 'DLX');
END

-- The Grayson Hotel Miami Downtown | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=855865 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (855865, 1, 2, '12063', 'SPR');
END

-- Verify results
SELECT * FROM Med_Hotels_ratebycat WHERE HotelId IN (1, 250, 571, 695, 1265, 1329, 1360, 1514, 1758, 1850, 2315, 3160, 3327, 3570, 3742, 3946, 4241, 4329, 4735, 4755, 4848, 5012, 5470, 5738, 6322, 6325, 6482, 6654, 6660, 6661, 6663, 10192, 10248, 10265, 10379, 11661, 12727, 12821, 12824, 12915, 12916, 14702, 14760, 15012, 15156, 15906, 16711, 16861, 16864, 16873, 16877, 17098, 19977, 20613, 20702, 20706, 21106, 21162, 21842, 22034, 24982, 24989, 26733, 26904, 26914, 27493, 28636, 28757, 31226, 31299, 31433, 31709, 32687, 36281, 36919, 46256, 48442, 49182, 50771, 51200, 51284, 54309, 56061, 64309, 64390, 65895, 66737, 66811, 67387, 68023, 68833, 70995, 71106, 71423, 78266, 79794, 79914, 80408, 82138, 85535, 86005, 87197, 88064, 88282, 90340, 92657, 95149, 95797, 95822, 98597, 113912, 117130, 117316, 117424, 117491, 118069, 120499, 124995, 132492, 155768, 156617, 161655, 172918, 173044, 173508, 174010, 174266, 179578, 181089, 190691, 190692, 190741, 190744, 193899, 194274, 194365, 196481, 197163, 199232, 199631, 205608, 208326, 210263, 212318, 215712, 237161, 237547, 241025, 241168, 241415, 241446, 253174, 254198, 254941, 264084, 264523, 265475, 266841, 277280, 285709, 286236, 301583, 301640, 301645, 305323, 313608, 314212, 316281, 318831, 321314, 324657, 333502, 348314, 356213, 360291, 361242, 361657, 361821, 376247, 382417, 382813, 383277, 388433, 392590, 392596, 393267, 404578, 407878, 408350, 412558, 414146, 415363, 436699, 437872, 446867, 475912, 700403, 701659, 706661, 733781, 766812, 825006, 825207, 825952, 826044, 826068, 826577, 826585, 826607, 826608, 826694, 826697, 826698, 826703, 827204, 827532, 827543, 827553, 827554, 827688, 827737, 827752, 839231, 839232, 839233, 839234, 839235, 839236, 839237, 839239, 839242, 842332, 842529, 842530, 842608, 845261, 845354, 845364, 845365, 846048, 846050, 846098, 846102, 846140, 846278, 846428, 846488, 846944, 847409, 847726, 848677, 851633, 851939, 852120, 852725, 853382, 854710, 854875, 854881, 855711, 855865) ORDER BY HotelId, BoardId, CategoryId;

COMMIT TRANSACTION;