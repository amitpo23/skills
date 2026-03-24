-- =============================================================
-- ROLLBACK - SalesOffice Mapping Gap Fix
-- Generated: 2026-03-18T08:37:50.134434+00:00
-- WARNING: Only run this to undo the auto-generated INSERTs
-- =============================================================

BEGIN TRANSACTION;

-- Rollback: Grand Hotel Rimini | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7073' AND InvTypeCode='SPR';

-- Rollback: Grand Hotel Rimini | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7073' AND InvTypeCode='DLX';

-- Rollback: Grand Hotel Rimini | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7073' AND InvTypeCode='Suite';

-- Rollback: Grand Hotel Rimini | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7074' AND InvTypeCode='SPR';

-- Rollback: Grand Hotel Rimini | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7074' AND InvTypeCode='DLX';

-- Rollback: Grand Hotel Rimini | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7074' AND InvTypeCode='Suite';

-- Rollback: Holiday Inn London - Bloomsbury | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=250 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7163' AND InvTypeCode='SPR';

-- Rollback: Holiday Inn London - Bloomsbury | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=250 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7163' AND InvTypeCode='DLX';

-- Rollback: Holiday Inn London - Bloomsbury | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=250 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7163' AND InvTypeCode='Suite';

-- Rollback: Holiday Inn London - Bloomsbury | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=250 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7164' AND InvTypeCode='SPR';

-- Rollback: Holiday Inn London - Bloomsbury | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=250 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7164' AND InvTypeCode='DLX';

-- Rollback: Holiday Inn London - Bloomsbury | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=250 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7164' AND InvTypeCode='Suite';

-- Rollback: Strand Palace Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=571 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7171' AND InvTypeCode='DLX';

-- Rollback: Strand Palace Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=571 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7171' AND InvTypeCode='Suite';

-- Rollback: Strand Palace Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=571 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7172' AND InvTypeCode='DLX';

-- Rollback: Strand Palace Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=571 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7172' AND InvTypeCode='Suite';

-- Rollback: Doubletree By Hilton London-Islington | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=695 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7155' AND InvTypeCode='SPR';

-- Rollback: Doubletree By Hilton London-Islington | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=695 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7155' AND InvTypeCode='Suite';

-- Rollback: Doubletree By Hilton London-Islington | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=695 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7156' AND InvTypeCode='SPR';

-- Rollback: Doubletree By Hilton London-Islington | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=695 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7156' AND InvTypeCode='Suite';

-- Rollback: The Clermont Hotel Victoria (ex:The Amba Hotel Grosvenor) | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1265 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7157' AND InvTypeCode='SPR';

-- Rollback: The Clermont Hotel Victoria (ex:The Amba Hotel Grosvenor) | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1265 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7157' AND InvTypeCode='Suite';

-- Rollback: The Clermont Hotel Victoria (ex:The Amba Hotel Grosvenor) | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1265 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7158' AND InvTypeCode='SPR';

-- Rollback: The Clermont Hotel Victoria (ex:The Amba Hotel Grosvenor) | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1265 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7158' AND InvTypeCode='Suite';

-- Rollback: Thistle Holborn, The Kingsley | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1329 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7161' AND InvTypeCode='SPR';

-- Rollback: Thistle Holborn, The Kingsley | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1329 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7161' AND InvTypeCode='Suite';

-- Rollback: Thistle Holborn, The Kingsley | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1329 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7162' AND InvTypeCode='SPR';

-- Rollback: Thistle Holborn, The Kingsley | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1329 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7162' AND InvTypeCode='Suite';

-- Rollback: Pullman London St Pancras | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1360 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7177' AND InvTypeCode='DLX';

-- Rollback: Pullman London St Pancras | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1360 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7177' AND InvTypeCode='Suite';

-- Rollback: Pullman London St Pancras | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1360 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7178' AND InvTypeCode='DLX';

-- Rollback: Pullman London St Pancras | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1360 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7178' AND InvTypeCode='Suite';

-- Rollback: Phoenix Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1514 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7095' AND InvTypeCode='SPR';

-- Rollback: Phoenix Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1514 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7095' AND InvTypeCode='Suite';

-- Rollback: Phoenix Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1514 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7096' AND InvTypeCode='SPR';

-- Rollback: Phoenix Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1514 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7096' AND InvTypeCode='Suite';

-- Rollback: The Clermont Hotel, Charing Cross (Ex: Amba Charing Cross - Guonan) | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1758 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7192' AND InvTypeCode='Suite';

-- Rollback: The Clermont Hotel, Charing Cross (Ex: Amba Charing Cross - Guonan) | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1758 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7193' AND InvTypeCode='Suite';

-- Rollback: St James' Court A Taj Hotel (former Crowne Plaza St James) | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1850 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7173' AND InvTypeCode='SPR';

-- Rollback: St James' Court A Taj Hotel (former Crowne Plaza St James) | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1850 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7173' AND InvTypeCode='DLX';

-- Rollback: St James' Court A Taj Hotel (former Crowne Plaza St James) | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1850 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7173' AND InvTypeCode='Suite';

-- Rollback: St James' Court A Taj Hotel (former Crowne Plaza St James) | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1850 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7174' AND InvTypeCode='SPR';

-- Rollback: St James' Court A Taj Hotel (former Crowne Plaza St James) | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1850 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7174' AND InvTypeCode='DLX';

-- Rollback: St James' Court A Taj Hotel (former Crowne Plaza St James) | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=1850 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7174' AND InvTypeCode='Suite';

-- Rollback: Est Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=2315 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7528' AND InvTypeCode='SPR';

-- Rollback: Est Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=2315 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7528' AND InvTypeCode='DLX';

-- Rollback: Est Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=2315 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7528' AND InvTypeCode='Suite';

-- Rollback: Est Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=2315 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7529' AND InvTypeCode='SPR';

-- Rollback: Est Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=2315 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7529' AND InvTypeCode='DLX';

-- Rollback: Est Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=2315 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7529' AND InvTypeCode='Suite';

-- Rollback: Hotel Central Saint Germain | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3160 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7547' AND InvTypeCode='SPR';

-- Rollback: Hotel Central Saint Germain | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3160 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7547' AND InvTypeCode='DLX';

-- Rollback: Hotel Central Saint Germain | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3160 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7547' AND InvTypeCode='Suite';

-- Rollback: Hotel Central Saint Germain | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3160 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7548' AND InvTypeCode='SPR';

-- Rollback: Hotel Central Saint Germain | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3160 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7548' AND InvTypeCode='DLX';

-- Rollback: Hotel Central Saint Germain | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3160 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7548' AND InvTypeCode='Suite';

-- Rollback: Hotel Le Senat | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3327 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7604' AND InvTypeCode='DLX';

-- Rollback: Hotel Le Senat | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3327 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7604' AND InvTypeCode='Suite';

-- Rollback: Hotel Le Senat | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3327 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7605' AND InvTypeCode='DLX';

-- Rollback: Hotel Le Senat | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3327 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7605' AND InvTypeCode='Suite';

-- Rollback: Thistle Trafalgar, Leicester Square | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3570 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7125' AND InvTypeCode='SPR';

-- Rollback: Thistle Trafalgar, Leicester Square | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3570 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7125' AND InvTypeCode='Suite';

-- Rollback: Thistle Trafalgar, Leicester Square | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3570 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7126' AND InvTypeCode='SPR';

-- Rollback: Thistle Trafalgar, Leicester Square | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3570 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7126' AND InvTypeCode='Suite';

-- Rollback: The Belgrave Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3742 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7175' AND InvTypeCode='SPR';

-- Rollback: The Belgrave Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3742 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7175' AND InvTypeCode='Suite';

-- Rollback: The Belgrave Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3742 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7176' AND InvTypeCode='SPR';

-- Rollback: The Belgrave Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3742 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7176' AND InvTypeCode='Suite';

-- Rollback: Doubletree by Hilton Westminster [ex. City Inn and Mint Westminster] | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3946 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7169' AND InvTypeCode='SPR';

-- Rollback: Doubletree by Hilton Westminster [ex. City Inn and Mint Westminster] | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3946 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7169' AND InvTypeCode='DLX';

-- Rollback: Doubletree by Hilton Westminster [ex. City Inn and Mint Westminster] | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3946 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7170' AND InvTypeCode='SPR';

-- Rollback: Doubletree by Hilton Westminster [ex. City Inn and Mint Westminster] | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=3946 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7170' AND InvTypeCode='DLX';

-- Rollback: Rixos Premium Belek | AI/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4241 AND BoardId=5 AND CategoryId=2 AND RatePlanCode='7083' AND InvTypeCode='SPR';

-- Rollback: Rixos Premium Belek | AI/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4241 AND BoardId=5 AND CategoryId=4 AND RatePlanCode='7083' AND InvTypeCode='DLX';

-- Rollback: Rixos Premium Belek | AI/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4241 AND BoardId=5 AND CategoryId=12 AND RatePlanCode='7083' AND InvTypeCode='Suite';

-- Rollback: New Hotel Roblin | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4329 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7689' AND InvTypeCode='DLX';

-- Rollback: New Hotel Roblin | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4329 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7689' AND InvTypeCode='Suite';

-- Rollback: New Hotel Roblin | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4329 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7690' AND InvTypeCode='DLX';

-- Rollback: New Hotel Roblin | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4329 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7690' AND InvTypeCode='Suite';

-- Rollback: Citadines Trafalgar Square London | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4735 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7121' AND InvTypeCode='SPR';

-- Rollback: Citadines Trafalgar Square London | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4735 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7121' AND InvTypeCode='DLX';

-- Rollback: Citadines Trafalgar Square London | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4735 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7121' AND InvTypeCode='Suite';

-- Rollback: Citadines Saint-Germain Des Pres | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4755 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7691' AND InvTypeCode='SPR';

-- Rollback: Citadines Saint-Germain Des Pres | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4755 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7691' AND InvTypeCode='Suite';

-- Rollback: PARK PLAZA RIVERBANK | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4848 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7129' AND InvTypeCode='DLX';

-- Rollback: PARK PLAZA RIVERBANK | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4848 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7129' AND InvTypeCode='Suite';

-- Rollback: PARK PLAZA RIVERBANK | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4848 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7130' AND InvTypeCode='DLX';

-- Rollback: PARK PLAZA RIVERBANK | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=4848 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7130' AND InvTypeCode='Suite';

-- Rollback: Elysees 8 Hotel (ex Timhotel Elysees Cambaceres) | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5012 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7541' AND InvTypeCode='SPR';

-- Rollback: Elysees 8 Hotel (ex Timhotel Elysees Cambaceres) | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5012 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7541' AND InvTypeCode='DLX';

-- Rollback: Elysees 8 Hotel (ex Timhotel Elysees Cambaceres) | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5012 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7541' AND InvTypeCode='Suite';

-- Rollback: Elysees 8 Hotel (ex Timhotel Elysees Cambaceres) | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5012 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7542' AND InvTypeCode='SPR';

-- Rollback: Elysees 8 Hotel (ex Timhotel Elysees Cambaceres) | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5012 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7542' AND InvTypeCode='DLX';

-- Rollback: Elysees 8 Hotel (ex Timhotel Elysees Cambaceres) | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5012 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7542' AND InvTypeCode='Suite';

-- Rollback: Thistle Piccadilly | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5470 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7167' AND InvTypeCode='SPR';

-- Rollback: Thistle Piccadilly | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5470 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7167' AND InvTypeCode='Suite';

-- Rollback: Thistle Piccadilly | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5470 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7168' AND InvTypeCode='SPR';

-- Rollback: Thistle Piccadilly | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5470 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7168' AND InvTypeCode='Suite';

-- Rollback: Les Tournelles (formerly Les Chevaliers Du Marais) | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5738 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7539' AND InvTypeCode='SPR';

-- Rollback: Les Tournelles (formerly Les Chevaliers Du Marais) | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5738 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7539' AND InvTypeCode='DLX';

-- Rollback: Les Tournelles (formerly Les Chevaliers Du Marais) | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5738 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7539' AND InvTypeCode='Suite';

-- Rollback: Les Tournelles (formerly Les Chevaliers Du Marais) | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5738 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7540' AND InvTypeCode='SPR';

-- Rollback: Les Tournelles (formerly Les Chevaliers Du Marais) | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5738 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7540' AND InvTypeCode='DLX';

-- Rollback: Les Tournelles (formerly Les Chevaliers Du Marais) | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=5738 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7540' AND InvTypeCode='Suite';

-- Rollback: The Venetian Resort Hotel & Casino | RO/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6322 AND BoardId=1 AND CategoryId=1 AND RatePlanCode='7382' AND InvTypeCode='Stnd';

-- Rollback: The Venetian Resort Hotel & Casino | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6322 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7382' AND InvTypeCode='SPR';

-- Rollback: Wynn Las Vegas | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6325 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7375' AND InvTypeCode='SPR';

-- Rollback: Wynn Las Vegas | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6325 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7375' AND InvTypeCode='Suite';

-- Rollback: InterContinental Miami | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6482 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: InterContinental Miami | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6482 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: InterContinental Miami | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6482 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Dorchester Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6654 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Dorchester Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6654 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Dorchester Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6654 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Freehand Miami | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6660 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12076' AND InvTypeCode='DLX';

-- Rollback: Loews Miami Beach Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6661 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12033' AND InvTypeCode='SPR';

-- Rollback: Loews Miami Beach Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6661 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12033' AND InvTypeCode='DLX';

-- Rollback: Marseilles Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6663 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12065' AND InvTypeCode='SPR';

-- Rollback: Marseilles Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=6663 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12065' AND InvTypeCode='DLX';

-- Rollback: Dusit Thani | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10192 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7252' AND InvTypeCode='SPR';

-- Rollback: Dusit Thani | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10192 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7252' AND InvTypeCode='Suite';

-- Rollback: Dusit Thani | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10192 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7253' AND InvTypeCode='SPR';

-- Rollback: Dusit Thani | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10192 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7253' AND InvTypeCode='Suite';

-- Rollback: St Regis Downtown | RO/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10248 AND BoardId=1 AND CategoryId=1 AND RatePlanCode='7271' AND InvTypeCode='Stnd';

-- Rollback: St Regis Downtown | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10248 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7271' AND InvTypeCode='Suite';

-- Rollback: St Regis Downtown | BB/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10248 AND BoardId=2 AND CategoryId=1 AND RatePlanCode='7272' AND InvTypeCode='Stnd';

-- Rollback: St Regis Downtown | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10248 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7272' AND InvTypeCode='Suite';

-- Rollback: Shangri-La Dubai | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10265 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7258' AND InvTypeCode='SPR';

-- Rollback: Shangri-La Dubai | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10265 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7258' AND InvTypeCode='Suite';

-- Rollback: Shangri-La Dubai | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10265 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7259' AND InvTypeCode='SPR';

-- Rollback: Shangri-La Dubai | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10265 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7259' AND InvTypeCode='Suite';

-- Rollback: Royal National Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10379 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7376' AND InvTypeCode='SPR';

-- Rollback: Royal National Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10379 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7376' AND InvTypeCode='DLX';

-- Rollback: Royal National Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10379 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7376' AND InvTypeCode='Suite';

-- Rollback: Royal National Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10379 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7377' AND InvTypeCode='SPR';

-- Rollback: Royal National Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10379 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7377' AND InvTypeCode='DLX';

-- Rollback: Royal National Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=10379 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7377' AND InvTypeCode='Suite';

-- Rollback: Blakemore Hyde Park | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=11661 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7086' AND InvTypeCode='SPR';

-- Rollback: Blakemore Hyde Park | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=11661 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7086' AND InvTypeCode='DLX';

-- Rollback: Blakemore Hyde Park | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=11661 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7086' AND InvTypeCode='Suite';

-- Rollback: Blakemore Hyde Park | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=11661 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7864' AND InvTypeCode='SPR';

-- Rollback: Blakemore Hyde Park | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=11661 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7864' AND InvTypeCode='DLX';

-- Rollback: Blakemore Hyde Park | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=11661 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7864' AND InvTypeCode='Suite';

-- Rollback: Maritim Jolie Ville Golf & Resort | RO/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12727 AND BoardId=1 AND CategoryId=1 AND RatePlanCode='7329' AND InvTypeCode='Stnd';

-- Rollback: Maritim Jolie Ville Golf & Resort | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12727 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7329' AND InvTypeCode='Suite';

-- Rollback: Maritim Jolie Ville Golf & Resort | BB/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12727 AND BoardId=2 AND CategoryId=1 AND RatePlanCode='7330' AND InvTypeCode='Stnd';

-- Rollback: Maritim Jolie Ville Golf & Resort | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12727 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7330' AND InvTypeCode='Suite';

-- Rollback: Brown Lighthouse Eilat | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12821 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7763' AND InvTypeCode='DLX';

-- Rollback: Brown Lighthouse Eilat | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12821 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7763' AND InvTypeCode='Suite';

-- Rollback: Brown Lighthouse Eilat | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12821 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7764' AND InvTypeCode='DLX';

-- Rollback: Brown Lighthouse Eilat | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12821 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7764' AND InvTypeCode='Suite';

-- Rollback: Brown Eilat | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12824 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7760' AND InvTypeCode='SPR';

-- Rollback: Brown Eilat | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12824 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7760' AND InvTypeCode='DLX';

-- Rollback: Brown Eilat | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12824 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7760' AND InvTypeCode='Suite';

-- Rollback: Brown Eilat | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12824 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7761' AND InvTypeCode='SPR';

-- Rollback: Brown Eilat | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12824 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7761' AND InvTypeCode='DLX';

-- Rollback: Brown Eilat | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12824 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7761' AND InvTypeCode='Suite';

-- Rollback: Sea Net | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12915 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7185' AND InvTypeCode='Suite';

-- Rollback: Shalom hotel & Relax | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12916 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7139' AND InvTypeCode='DLX';

-- Rollback: Shalom hotel & Relax | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12916 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7139' AND InvTypeCode='Suite';

-- Rollback: Shalom hotel & Relax | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12916 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7140' AND InvTypeCode='DLX';

-- Rollback: Shalom hotel & Relax | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=12916 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7140' AND InvTypeCode='Suite';

-- Rollback: Vital | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=14702 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7147' AND InvTypeCode='SPR';

-- Rollback: Vital | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=14702 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7147' AND InvTypeCode='DLX';

-- Rollback: Vital | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=14702 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7147' AND InvTypeCode='Suite';

-- Rollback: Vital | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=14702 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7148' AND InvTypeCode='SPR';

-- Rollback: Vital | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=14702 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7148' AND InvTypeCode='DLX';

-- Rollback: Vital | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=14702 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7148' AND InvTypeCode='Suite';

-- Rollback: Grand Palladium Palace Resort & Spa | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=14760 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7378' AND InvTypeCode='SPR';

-- Rollback: Grand Palladium Palace Resort & Spa | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=14760 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7378' AND InvTypeCode='Suite';

-- Rollback: Grand Palladium Palace Resort & Spa | AI/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=14760 AND BoardId=5 AND CategoryId=2 AND RatePlanCode='7392' AND InvTypeCode='SPR';

-- Rollback: Grand Palladium Palace Resort & Spa | AI/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=14760 AND BoardId=5 AND CategoryId=12 AND RatePlanCode='7392' AND InvTypeCode='Suite';

-- Rollback: The Hoxton Shoreditch | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=15012 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7187' AND InvTypeCode='SPR';

-- Rollback: The Hoxton Shoreditch | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=15012 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7187' AND InvTypeCode='DLX';

-- Rollback: The Hoxton Shoreditch | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=15012 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7187' AND InvTypeCode='Suite';

-- Rollback: Mandeville | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=15156 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7165' AND InvTypeCode='DLX';

-- Rollback: Mandeville | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=15156 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7165' AND InvTypeCode='Suite';

-- Rollback: Mandeville | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=15156 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7166' AND InvTypeCode='DLX';

-- Rollback: Mandeville | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=15156 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7166' AND InvTypeCode='Suite';

-- Rollback: Eden Opera Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=15906 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7526' AND InvTypeCode='DLX';

-- Rollback: Eden Opera Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=15906 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7526' AND InvTypeCode='Suite';

-- Rollback: Eden Opera Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=15906 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7527' AND InvTypeCode='DLX';

-- Rollback: Eden Opera Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=15906 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7527' AND InvTypeCode='Suite';

-- Rollback: Peyris Opera | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16711 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7534' AND InvTypeCode='DLX';

-- Rollback: Peyris Opera | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16711 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7534' AND InvTypeCode='Suite';

-- Rollback: Peyris Opera | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16711 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7535' AND InvTypeCode='DLX';

-- Rollback: Peyris Opera | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16711 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7535' AND InvTypeCode='Suite';

-- Rollback: Hotel Plaza Elysees (Ex. BEST WESTERN Plaza Elysees) | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16861 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7676' AND InvTypeCode='DLX';

-- Rollback: Hotel Plaza Elysees (Ex. BEST WESTERN Plaza Elysees) | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16861 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7676' AND InvTypeCode='Suite';

-- Rollback: Hotel Plaza Elysees (Ex. BEST WESTERN Plaza Elysees) | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16861 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7677' AND InvTypeCode='DLX';

-- Rollback: Hotel Plaza Elysees (Ex. BEST WESTERN Plaza Elysees) | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16861 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7677' AND InvTypeCode='Suite';

-- Rollback: Princesse Caroline | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16864 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7536' AND InvTypeCode='SPR';

-- Rollback: Princesse Caroline | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16864 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7536' AND InvTypeCode='DLX';

-- Rollback: Princesse Caroline | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16864 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7536' AND InvTypeCode='Suite';

-- Rollback: Princesse Caroline | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16864 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7899' AND InvTypeCode='SPR';

-- Rollback: Princesse Caroline | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16864 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7899' AND InvTypeCode='DLX';

-- Rollback: Princesse Caroline | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16864 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7899' AND InvTypeCode='Suite';

-- Rollback: Hotel Marceau Champs Elysees | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16873 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7692' AND InvTypeCode='DLX';

-- Rollback: Hotel Marceau Champs Elysees | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16873 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7692' AND InvTypeCode='Suite';

-- Rollback: Hotel Park Lane Paris | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16877 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7682' AND InvTypeCode='DLX';

-- Rollback: Hotel Park Lane Paris | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16877 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7682' AND InvTypeCode='Suite';

-- Rollback: Hotel Park Lane Paris | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16877 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7683' AND InvTypeCode='DLX';

-- Rollback: Hotel Park Lane Paris | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=16877 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7683' AND InvTypeCode='Suite';

-- Rollback: Heritance Kandalama | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=17098 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7059' AND InvTypeCode='SPR';

-- Rollback: Heritance Kandalama | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=17098 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7059' AND InvTypeCode='DLX';

-- Rollback: Heritance Kandalama | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=17098 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7059' AND InvTypeCode='Suite';

-- Rollback: Fontainebleau Miami Beach | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=19977 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Fontainebleau Miami Beach | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=19977 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Fontainebleau Miami Beach | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=19977 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Park Grand London Kensington | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20613 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7088' AND InvTypeCode='Suite';

-- Rollback: Park Grand London Kensington | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20613 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7087' AND InvTypeCode='Suite';

-- Rollback: Embassy Suites by Hilton Miami International Airport | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12045' AND InvTypeCode='SPR';

-- Rollback: Embassy Suites by Hilton Miami International Airport | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12045' AND InvTypeCode='DLX';

-- Rollback: Embassy Suites by Hilton Miami International Airport | BB/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=1 AND RatePlanCode='13170' AND InvTypeCode='Stnd';

-- Rollback: Embassy Suites by Hilton Miami International Airport | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13170' AND InvTypeCode='SPR';

-- Rollback: Embassy Suites by Hilton Miami International Airport | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13170' AND InvTypeCode='DLX';

-- Rollback: Hilton Miami Airport | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20706 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Hilton Miami Airport | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20706 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Hilton Miami Airport | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20706 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Isrotel Tower Tel Aviv Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=21106 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7179' AND InvTypeCode='Suite';

-- Rollback: Isrotel Tower Tel Aviv Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=21106 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7180' AND InvTypeCode='Suite';

-- Rollback: Trianon Rive Gauche (Ex. Best Western Trianon Rive Gauche) | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=21162 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7687' AND InvTypeCode='DLX';

-- Rollback: Trianon Rive Gauche (Ex. Best Western Trianon Rive Gauche) | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=21162 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7687' AND InvTypeCode='Suite';

-- Rollback: Trianon Rive Gauche (Ex. Best Western Trianon Rive Gauche) | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=21162 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7688' AND InvTypeCode='DLX';

-- Rollback: Trianon Rive Gauche (Ex. Best Western Trianon Rive Gauche) | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=21162 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7688' AND InvTypeCode='Suite';

-- Rollback: Miami International Airport Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=21842 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Miami International Airport Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=21842 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Miami International Airport Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=21842 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Hilton Bentley Miami South Beach | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=22034 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12062' AND InvTypeCode='SPR';

-- Rollback: Hilton Miami Downtown | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12048' AND InvTypeCode='SPR';

-- Rollback: Hilton Miami Downtown | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12048' AND InvTypeCode='DLX';

-- Rollback: Hilton Miami Downtown | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13173' AND InvTypeCode='SPR';

-- Rollback: Hilton Miami Downtown | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13173' AND InvTypeCode='DLX';

-- Rollback: Hotel Riu Plaza Miami Beach | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=24989 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12077' AND InvTypeCode='SPR';

-- Rollback: Hotel Riu Plaza Miami Beach | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=24989 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='12077' AND InvTypeCode='Suite';

-- Rollback: Barcelo Imagine (Ex. Foxa 32) | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=26733 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7380' AND InvTypeCode='SPR';

-- Rollback: Barcelo Imagine (Ex. Foxa 32) | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=26733 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7380' AND InvTypeCode='Suite';

-- Rollback: Barcelo Imagine (Ex. Foxa 32) | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=26733 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7381' AND InvTypeCode='SPR';

-- Rollback: Barcelo Imagine (Ex. Foxa 32) | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=26733 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7381' AND InvTypeCode='Suite';

-- Rollback: Victoria Palace | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=26904 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7673' AND InvTypeCode='DLX';

-- Rollback: Victoria Palace | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=26904 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7673' AND InvTypeCode='Suite';

-- Rollback: Victoria Palace | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=26904 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7674' AND InvTypeCode='DLX';

-- Rollback: Victoria Palace | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=26904 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7674' AND InvTypeCode='Suite';

-- Rollback: Moderne St Germain | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=26914 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7606' AND InvTypeCode='DLX';

-- Rollback: Moderne St Germain | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=26914 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7606' AND InvTypeCode='Suite';

-- Rollback: Moderne St Germain | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=26914 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7607' AND InvTypeCode='DLX';

-- Rollback: Moderne St Germain | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=26914 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7607' AND InvTypeCode='Suite';

-- Rollback: Hotel Du Vieux Saule | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=27493 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7596' AND InvTypeCode='DLX';

-- Rollback: Hotel Du Vieux Saule | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=27493 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7596' AND InvTypeCode='Suite';

-- Rollback: Hotel Du Vieux Saule | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=27493 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7597' AND InvTypeCode='DLX';

-- Rollback: Hotel Du Vieux Saule | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=27493 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7597' AND InvTypeCode='Suite';

-- Rollback: PARK PLAZA COUNTY HALL | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=28636 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7089' AND InvTypeCode='DLX';

-- Rollback: PARK PLAZA COUNTY HALL | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=28636 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7089' AND InvTypeCode='Suite';

-- Rollback: PARK PLAZA COUNTY HALL | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=28636 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7090' AND InvTypeCode='DLX';

-- Rollback: PARK PLAZA COUNTY HALL | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=28636 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7090' AND InvTypeCode='Suite';

-- Rollback: The Palazzo Resort Hotel Casino | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=28757 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7373' AND InvTypeCode='SPR';

-- Rollback: Kimpton Angler's Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=31226 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Kimpton Angler's Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=31226 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Kimpton Angler's Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=31226 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: 54 Queen's Gate Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=31299 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7091' AND InvTypeCode='SPR';

-- Rollback: 54 Queen's Gate Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=31299 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7091' AND InvTypeCode='Suite';

-- Rollback: 54 Queen's Gate Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=31299 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7092' AND InvTypeCode='SPR';

-- Rollback: 54 Queen's Gate Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=31299 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7092' AND InvTypeCode='Suite';

-- Rollback: Metropole South Beach | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=31433 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Metropole South Beach | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=31433 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Metropole South Beach | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=31433 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Viajero Miami | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=31709 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='12079' AND InvTypeCode='Suite';

-- Rollback: Hotel Chelsea | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=32687 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Hotel Chelsea | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=32687 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Hotel Chelsea | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=32687 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Best Western Grand Hotel De LUnivers | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=36281 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7686' AND InvTypeCode='SPR';

-- Rollback: Best Western Grand Hotel De LUnivers | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=36281 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7686' AND InvTypeCode='Suite';

-- Rollback: Hotel Duquesne Eiffel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=36919 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7684' AND InvTypeCode='DLX';

-- Rollback: Hotel Duquesne Eiffel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=36919 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7684' AND InvTypeCode='Suite';

-- Rollback: Hotel Duquesne Eiffel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=36919 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7685' AND InvTypeCode='DLX';

-- Rollback: Hotel Duquesne Eiffel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=36919 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7685' AND InvTypeCode='Suite';

-- Rollback: Renaissance Golden View Beach Resort | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=46256 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7321' AND InvTypeCode='SPR';

-- Rollback: Renaissance Golden View Beach Resort | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=46256 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7321' AND InvTypeCode='DLX';

-- Rollback: Renaissance Golden View Beach Resort | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=46256 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7322' AND InvTypeCode='SPR';

-- Rollback: Renaissance Golden View Beach Resort | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=46256 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7322' AND InvTypeCode='DLX';

-- Rollback: Renaissance Golden View Beach Resort | HB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=46256 AND BoardId=3 AND CategoryId=2 AND RatePlanCode='7847' AND InvTypeCode='SPR';

-- Rollback: Renaissance Golden View Beach Resort | HB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=46256 AND BoardId=3 AND CategoryId=4 AND RatePlanCode='7847' AND InvTypeCode='DLX';

-- Rollback: Iberotel Palace | AI/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=48442 AND BoardId=5 AND CategoryId=1 AND RatePlanCode='7334' AND InvTypeCode='Stnd';

-- Rollback: Iberotel Palace | AI/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=48442 AND BoardId=5 AND CategoryId=4 AND RatePlanCode='7334' AND InvTypeCode='DLX';

-- Rollback: The Westin | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=49182 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7078' AND InvTypeCode='SPR';

-- Rollback: The Westin | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=49182 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7078' AND InvTypeCode='Suite';

-- Rollback: The Westin | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=49182 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7079' AND InvTypeCode='SPR';

-- Rollback: The Westin | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=49182 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7079' AND InvTypeCode='Suite';

-- Rollback: Park Plaza Westminster Bridge | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=50771 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7159' AND InvTypeCode='DLX';

-- Rollback: Park Plaza Westminster Bridge | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=50771 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7159' AND InvTypeCode='Suite';

-- Rollback: Park Plaza Westminster Bridge | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=50771 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7160' AND InvTypeCode='DLX';

-- Rollback: Park Plaza Westminster Bridge | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=50771 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7160' AND InvTypeCode='Suite';

-- Rollback: H10 LONDON WATERLOO | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=51200 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7135' AND InvTypeCode='SPR';

-- Rollback: H10 LONDON WATERLOO | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=51200 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7135' AND InvTypeCode='Suite';

-- Rollback: H10 LONDON WATERLOO | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=51200 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7136' AND InvTypeCode='SPR';

-- Rollback: H10 LONDON WATERLOO | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=51200 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7136' AND InvTypeCode='Suite';

-- Rollback: The Palace Downtown Dubai | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=51284 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7229' AND InvTypeCode='SPR';

-- Rollback: The Palace Downtown Dubai | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=51284 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7230' AND InvTypeCode='SPR';

-- Rollback: Chamberlain Hotel | BB/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=54309 AND BoardId=2 AND CategoryId=1 AND RatePlanCode='7134' AND InvTypeCode='Stnd';

-- Rollback: Chamberlain Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=54309 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7134' AND InvTypeCode='SPR';

-- Rollback: Chamberlain Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=54309 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7134' AND InvTypeCode='Suite';

-- Rollback: Sea Executive Suites | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=56061 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7143' AND InvTypeCode='SPR';

-- Rollback: Sea Executive Suites | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=56061 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7143' AND InvTypeCode='DLX';

-- Rollback: Sea Executive Suites | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=56061 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7143' AND InvTypeCode='Suite';

-- Rollback: Sea Executive Suites | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=56061 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7144' AND InvTypeCode='SPR';

-- Rollback: Sea Executive Suites | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=56061 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7144' AND InvTypeCode='DLX';

-- Rollback: Sea Executive Suites | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=56061 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7144' AND InvTypeCode='Suite';

-- Rollback: Savoy Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=64309 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12071' AND InvTypeCode='SPR';

-- Rollback: Savoy Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=64309 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13155' AND InvTypeCode='SPR';

-- Rollback: Crystal Beach Suites Hotel | RO/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=64390 AND BoardId=1 AND CategoryId=1 AND RatePlanCode='12069' AND InvTypeCode='Stnd';

-- Rollback: Crystal Beach Suites Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=64390 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12069' AND InvTypeCode='SPR';

-- Rollback: Crystal Beach Suites Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=64390 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12069' AND InvTypeCode='DLX';

-- Rollback: The Address Dubai Mall | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=65895 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7237' AND InvTypeCode='SPR';

-- Rollback: The Address Dubai Mall | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=65895 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7237' AND InvTypeCode='Suite';

-- Rollback: The Address Dubai Mall | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=65895 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7238' AND InvTypeCode='SPR';

-- Rollback: The Address Dubai Mall | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=65895 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7238' AND InvTypeCode='Suite';

-- Rollback: Cavalier Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=66737 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Cavalier Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=66737 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Cavalier Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=66737 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: The Westbourne Hyde Park [Ex. Royal Court Apartments] | RO/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=66811 AND BoardId=1 AND CategoryId=1 AND RatePlanCode='7124' AND InvTypeCode='Stnd';

-- Rollback: The Westbourne Hyde Park [Ex. Royal Court Apartments] | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=66811 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7124' AND InvTypeCode='SPR';

-- Rollback: HOLIDAY INN EXPRESS HOTEL & SUITES MIAMI | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=67387 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: HOLIDAY INN EXPRESS HOTEL & SUITES MIAMI | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=67387 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: HOLIDAY INN EXPRESS HOTEL & SUITES MIAMI | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=67387 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Best Western Premier Au Manoir Saint Germain De Pres | RO/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=68023 AND BoardId=1 AND CategoryId=1 AND RatePlanCode='7552' AND InvTypeCode='Stnd';

-- Rollback: Best Western Premier Au Manoir Saint Germain De Pres | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=68023 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7552' AND InvTypeCode='Suite';

-- Rollback: Grand Beach Hotel Miami | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=68833 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Grand Beach Hotel Miami | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=68833 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Grand Beach Hotel Miami | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=68833 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: MB Hotel, Trademark Collection by Wyndham | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=70995 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12073' AND InvTypeCode='SPR';

-- Rollback: OLIVER PLAZA | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=71106 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7122' AND InvTypeCode='SPR';

-- Rollback: OLIVER PLAZA | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=71106 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7122' AND InvTypeCode='DLX';

-- Rollback: OLIVER PLAZA | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=71106 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7122' AND InvTypeCode='Suite';

-- Rollback: OLIVER PLAZA | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=71106 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7123' AND InvTypeCode='SPR';

-- Rollback: OLIVER PLAZA | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=71106 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7123' AND InvTypeCode='DLX';

-- Rollback: OLIVER PLAZA | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=71106 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7123' AND InvTypeCode='Suite';

-- Rollback: Queen'S Gate Hotel [Ex. Abba Queens Gate Hotel] | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=71423 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7190' AND InvTypeCode='Suite';

-- Rollback: Queen'S Gate Hotel [Ex. Abba Queens Gate Hotel] | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=71423 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7191' AND InvTypeCode='Suite';

-- Rollback: Atlantic | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=78266 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7530' AND InvTypeCode='DLX';

-- Rollback: Atlantic | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=78266 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7530' AND InvTypeCode='Suite';

-- Rollback: Prince De Conde | RO/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=79794 AND BoardId=1 AND CategoryId=1 AND RatePlanCode='7668' AND InvTypeCode='Stnd';

-- Rollback: Prince De Conde | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=79794 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7668' AND InvTypeCode='DLX';

-- Rollback: Hotel France d'Antin Opéra | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=79914 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7665' AND InvTypeCode='DLX';

-- Rollback: Hotel France d'Antin Opéra | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=79914 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7665' AND InvTypeCode='Suite';

-- Rollback: THE SANCTUARY HOUSE | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=80408 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7115' AND InvTypeCode='SPR';

-- Rollback: THE SANCTUARY HOUSE | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=80408 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7115' AND InvTypeCode='Suite';

-- Rollback: THE SANCTUARY HOUSE | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=80408 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7116' AND InvTypeCode='SPR';

-- Rollback: THE SANCTUARY HOUSE | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=80408 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7116' AND InvTypeCode='Suite';

-- Rollback: Baron Palms Resort Sharm El Sheikh | AI/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=82138 AND BoardId=5 AND CategoryId=1 AND RatePlanCode='7332' AND InvTypeCode='Stnd';

-- Rollback: Baron Palms Resort Sharm El Sheikh | AI/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=82138 AND BoardId=5 AND CategoryId=4 AND RatePlanCode='7332' AND InvTypeCode='DLX';

-- Rollback: Westgate Las Vegas Hotel and Casino - The LVH | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=85535 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7372' AND InvTypeCode='SPR';

-- Rollback: Westgate Las Vegas Hotel and Casino - The LVH | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=85535 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7372' AND InvTypeCode='Suite';

-- Rollback: Moris Hotel Paris/MORIS GRANDS BOULEVARDS | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=86005 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7532' AND InvTypeCode='DLX';

-- Rollback: Moris Hotel Paris/MORIS GRANDS BOULEVARDS | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=86005 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7532' AND InvTypeCode='Suite';

-- Rollback: Moris Hotel Paris/MORIS GRANDS BOULEVARDS | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=86005 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7533' AND InvTypeCode='DLX';

-- Rollback: Moris Hotel Paris/MORIS GRANDS BOULEVARDS | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=86005 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7533' AND InvTypeCode='Suite';

-- Rollback: The Catalina Hotel & Beach Club | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=87197 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: The Catalina Hotel & Beach Club | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=87197 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: The Catalina Hotel & Beach Club | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=87197 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Cosmopolitan of Las Vegas | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=88064 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7374' AND InvTypeCode='SPR';

-- Rollback: Cosmopolitan of Las Vegas | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=88064 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7374' AND InvTypeCode='Suite';

-- Rollback: Sole Miami, A Noble House Resort | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=88282 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12072' AND InvTypeCode='SPR';

-- Rollback: Sole Miami, A Noble House Resort | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=88282 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12072' AND InvTypeCode='DLX';

-- Rollback: Jumeirah Emirates Towers | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=90340 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7273' AND InvTypeCode='SPR';

-- Rollback: Jumeirah Emirates Towers | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=90340 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7273' AND InvTypeCode='Suite';

-- Rollback: Jumeirah Emirates Towers | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=90340 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7274' AND InvTypeCode='SPR';

-- Rollback: Jumeirah Emirates Towers | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=90340 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7274' AND InvTypeCode='Suite';

-- Rollback: Radisson Water Garden | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=92657 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7080' AND InvTypeCode='SPR';

-- Rollback: Radisson Water Garden | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=92657 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7080' AND InvTypeCode='DLX';

-- Rollback: Radisson Water Garden | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=92657 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7080' AND InvTypeCode='Suite';

-- Rollback: Radisson Water Garden | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=92657 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7085' AND InvTypeCode='SPR';

-- Rollback: Radisson Water Garden | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=92657 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7085' AND InvTypeCode='DLX';

-- Rollback: Radisson Water Garden | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=92657 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7085' AND InvTypeCode='Suite';

-- Rollback: voco Dubai, an IHG Hotel [ex. Royal Hotel / Radisson Royal Hotel / JAL Tower Dubai] | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=95149 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7245' AND InvTypeCode='SPR';

-- Rollback: voco Dubai, an IHG Hotel [ex. Royal Hotel / Radisson Royal Hotel / JAL Tower Dubai] | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=95149 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7245' AND InvTypeCode='Suite';

-- Rollback: voco Dubai, an IHG Hotel [ex. Royal Hotel / Radisson Royal Hotel / JAL Tower Dubai] | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=95149 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7246' AND InvTypeCode='SPR';

-- Rollback: voco Dubai, an IHG Hotel [ex. Royal Hotel / Radisson Royal Hotel / JAL Tower Dubai] | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=95149 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7246' AND InvTypeCode='Suite';

-- Rollback: The Ritz-Carlton, Dubai International Financial Centre | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=95797 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7217' AND InvTypeCode='SPR';

-- Rollback: The Ritz-Carlton, Dubai International Financial Centre | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=95797 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7217' AND InvTypeCode='Suite';

-- Rollback: The Ritz-Carlton, Dubai International Financial Centre | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=95797 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7218' AND InvTypeCode='SPR';

-- Rollback: The Ritz-Carlton, Dubai International Financial Centre | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=95797 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7218' AND InvTypeCode='Suite';

-- Rollback: Armani Hotel Dubai | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=95822 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7233' AND InvTypeCode='SPR';

-- Rollback: Armani Hotel Dubai | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=95822 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7233' AND InvTypeCode='Suite';

-- Rollback: Armani Hotel Dubai | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=95822 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7234' AND InvTypeCode='SPR';

-- Rollback: Armani Hotel Dubai | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=95822 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7234' AND InvTypeCode='Suite';

-- Rollback: Tropitel Naama Bay | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=98597 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7327' AND InvTypeCode='DLX';

-- Rollback: Tropitel Naama Bay | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=98597 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7327' AND InvTypeCode='Suite';

-- Rollback: Tropitel Naama Bay | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=98597 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7328' AND InvTypeCode='DLX';

-- Rollback: Tropitel Naama Bay | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=98597 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7328' AND InvTypeCode='Suite';

-- Rollback: Sharm Dreams Resort | BB/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=113912 AND BoardId=2 AND CategoryId=1 AND RatePlanCode='7326' AND InvTypeCode='Stnd';

-- Rollback: Sharm Dreams Resort | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=113912 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7326' AND InvTypeCode='Suite';

-- Rollback: Sharm Dreams Resort | AI/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=113912 AND BoardId=5 AND CategoryId=1 AND RatePlanCode='7325' AND InvTypeCode='Stnd';

-- Rollback: Sharm Dreams Resort | AI/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=113912 AND BoardId=5 AND CategoryId=12 AND RatePlanCode='7325' AND InvTypeCode='Suite';

-- Rollback: Hotel le Clement | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117130 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7550' AND InvTypeCode='DLX';

-- Rollback: Hotel le Clement | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117130 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7550' AND InvTypeCode='Suite';

-- Rollback: Hotel le Clement | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117130 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7551' AND InvTypeCode='DLX';

-- Rollback: Hotel le Clement | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117130 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7551' AND InvTypeCode='Suite';

-- Rollback: RELAIS HOTEL DU VIEUX PARIS | RO/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117316 AND BoardId=1 AND CategoryId=1 AND RatePlanCode='7598' AND InvTypeCode='Stnd';

-- Rollback: RELAIS HOTEL DU VIEUX PARIS | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117316 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7598' AND InvTypeCode='Suite';

-- Rollback: RELAIS HOTEL DU VIEUX PARIS | BB/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117316 AND BoardId=2 AND CategoryId=1 AND RatePlanCode='7599' AND InvTypeCode='Stnd';

-- Rollback: RELAIS HOTEL DU VIEUX PARIS | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117316 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7599' AND InvTypeCode='Suite';

-- Rollback: Villa Des Princes | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117424 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7680' AND InvTypeCode='SPR';

-- Rollback: Villa Des Princes | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117424 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7680' AND InvTypeCode='Suite';

-- Rollback: Villa Des Princes | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117424 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7681' AND InvTypeCode='SPR';

-- Rollback: Villa Des Princes | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117424 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7681' AND InvTypeCode='Suite';

-- Rollback: FAIRWIND HOTEL & SUITES SOUTH BEACH | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117491 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12059' AND InvTypeCode='SPR';

-- Rollback: FAIRWIND HOTEL & SUITES SOUTH BEACH | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117491 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='12059' AND InvTypeCode='Suite';

-- Rollback: Brown Acropol By Brown Hotels | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=118069 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7769' AND InvTypeCode='SPR';

-- Rollback: Brown Acropol By Brown Hotels | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=118069 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7769' AND InvTypeCode='Suite';

-- Rollback: Brown Acropol By Brown Hotels | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=118069 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7770' AND InvTypeCode='SPR';

-- Rollback: Brown Acropol By Brown Hotels | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=118069 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7770' AND InvTypeCode='Suite';

-- Rollback: Brown Acropol By Brown Hotels | HB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=118069 AND BoardId=3 AND CategoryId=2 AND RatePlanCode='7771' AND InvTypeCode='SPR';

-- Rollback: Brown Acropol By Brown Hotels | HB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=118069 AND BoardId=3 AND CategoryId=12 AND RatePlanCode='7771' AND InvTypeCode='Suite';

-- Rollback: Liber - Seashore Suites | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=120499 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7153' AND InvTypeCode='SPR';

-- Rollback: Liber - Seashore Suites | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=120499 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7153' AND InvTypeCode='Suite';

-- Rollback: MONTANA HOTEL | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=124995 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7111' AND InvTypeCode='SPR';

-- Rollback: MONTANA HOTEL | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=124995 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7111' AND InvTypeCode='DLX';

-- Rollback: MONTANA HOTEL | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=124995 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7111' AND InvTypeCode='Suite';

-- Rollback: MONTANA HOTEL | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=124995 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7112' AND InvTypeCode='SPR';

-- Rollback: MONTANA HOTEL | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=124995 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7112' AND InvTypeCode='DLX';

-- Rollback: MONTANA HOTEL | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=124995 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7112' AND InvTypeCode='Suite';

-- Rollback: Hotel Saint-Louis en l Isle | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=132492 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7584' AND InvTypeCode='DLX';

-- Rollback: Hotel Saint-Louis en l Isle | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=132492 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7584' AND InvTypeCode='Suite';

-- Rollback: Hotel Saint-Louis en l Isle | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=132492 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7585' AND InvTypeCode='DLX';

-- Rollback: Hotel Saint-Louis en l Isle | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=132492 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7585' AND InvTypeCode='Suite';

-- Rollback: Xperience Sea Breeze Resort | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=155768 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7319' AND InvTypeCode='SPR';

-- Rollback: Xperience Sea Breeze Resort | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=155768 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7320' AND InvTypeCode='SPR';

-- Rollback: Maxim Tel Aviv | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=156617 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7152' AND InvTypeCode='SPR';

-- Rollback: Maxim Tel Aviv | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=156617 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7152' AND InvTypeCode='DLX';

-- Rollback: Maxim Tel Aviv | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=156617 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7152' AND InvTypeCode='Suite';

-- Rollback: Brown TLV Urban Hotel  | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=161655 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7730' AND InvTypeCode='DLX';

-- Rollback: Brown TLV Urban Hotel  | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=161655 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7730' AND InvTypeCode='Suite';

-- Rollback: Brown TLV Urban Hotel  | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=161655 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7731' AND InvTypeCode='DLX';

-- Rollback: Brown TLV Urban Hotel  | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=161655 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7731' AND InvTypeCode='Suite';

-- Rollback: Abbatial Saint Germain | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=172918 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7602' AND InvTypeCode='DLX';

-- Rollback: Abbatial Saint Germain | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=172918 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7602' AND InvTypeCode='Suite';

-- Rollback: Abbatial Saint Germain | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=172918 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7603' AND InvTypeCode='DLX';

-- Rollback: Abbatial Saint Germain | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=172918 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7603' AND InvTypeCode='Suite';

-- Rollback: Hotel Vendome Saint Germain | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=173044 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7590' AND InvTypeCode='DLX';

-- Rollback: Hotel Vendome Saint Germain | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=173044 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7590' AND InvTypeCode='Suite';

-- Rollback: Hotel Vendome Saint Germain | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=173044 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7591' AND InvTypeCode='DLX';

-- Rollback: Hotel Vendome Saint Germain | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=173044 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7591' AND InvTypeCode='Suite';

-- Rollback: Cadet Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=173508 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12064' AND InvTypeCode='SPR';

-- Rollback: Cadet Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=173508 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12064' AND InvTypeCode='DLX';

-- Rollback: Hotel Edouard 6 - Gare Montparnasse | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=174010 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7678' AND InvTypeCode='DLX';

-- Rollback: Hotel Edouard 6 - Gare Montparnasse | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=174010 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7678' AND InvTypeCode='Suite';

-- Rollback: Hotel Edouard 6 - Gare Montparnasse | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=174010 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7679' AND InvTypeCode='DLX';

-- Rollback: Hotel Edouard 6 - Gare Montparnasse | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=174010 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7679' AND InvTypeCode='Suite';

-- Rollback: Club Quarters, Trafalgar Square | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=174266 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7117' AND InvTypeCode='SPR';

-- Rollback: Club Quarters, Trafalgar Square | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=174266 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7117' AND InvTypeCode='DLX';

-- Rollback: Club Quarters, Trafalgar Square | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=174266 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7117' AND InvTypeCode='Suite';

-- Rollback: Club Quarters, Trafalgar Square | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=174266 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7118' AND InvTypeCode='SPR';

-- Rollback: Club Quarters, Trafalgar Square | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=174266 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7118' AND InvTypeCode='DLX';

-- Rollback: Club Quarters, Trafalgar Square | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=174266 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7118' AND InvTypeCode='Suite';

-- Rollback: Select Hotel Rive Gauche | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=179578 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7583' AND InvTypeCode='SPR';

-- Rollback: Select Hotel Rive Gauche | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=179578 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7583' AND InvTypeCode='Suite';

-- Rollback: Hotel Maison Athénée | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=181089 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7662' AND InvTypeCode='DLX';

-- Rollback: Hotel Maison Athénée | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=181089 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7662' AND InvTypeCode='Suite';

-- Rollback: Hotel Maison Athénée | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=181089 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7663' AND InvTypeCode='DLX';

-- Rollback: Hotel Maison Athénée | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=181089 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7663' AND InvTypeCode='Suite';

-- Rollback: Hotel Le Regent Paris | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=190691 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7666' AND InvTypeCode='DLX';

-- Rollback: Hotel Le Regent Paris | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=190691 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7666' AND InvTypeCode='Suite';

-- Rollback: Hotel Le Regent Paris | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=190691 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7667' AND InvTypeCode='DLX';

-- Rollback: Hotel Le Regent Paris | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=190691 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7667' AND InvTypeCode='Suite';

-- Rollback: De Seine | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=190692 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7693' AND InvTypeCode='DLX';

-- Rollback: De Seine | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=190692 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7693' AND InvTypeCode='Suite';

-- Rollback: De Seine | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=190692 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7694' AND InvTypeCode='DLX';

-- Rollback: De Seine | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=190692 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7694' AND InvTypeCode='Suite';

-- Rollback: Hotel Royal Phare | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=190741 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7664' AND InvTypeCode='DLX';

-- Rollback: Hotel Royal Phare | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=190741 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7664' AND InvTypeCode='Suite';

-- Rollback: L'Ouest | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=190744 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7531' AND InvTypeCode='DLX';

-- Rollback: L'Ouest | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=190744 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7531' AND InvTypeCode='Suite';

-- Rollback: The Villa Casa Casuarina | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=193899 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: The Villa Casa Casuarina | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=193899 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: The Villa Casa Casuarina | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=193899 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: HOTEL DUO | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=194274 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7588' AND InvTypeCode='DLX';

-- Rollback: HOTEL DUO | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=194274 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7588' AND InvTypeCode='Suite';

-- Rollback: HOTEL DUO | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=194274 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7589' AND InvTypeCode='DLX';

-- Rollback: HOTEL DUO | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=194274 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7589' AND InvTypeCode='Suite';

-- Rollback: Hotel La Perle | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=194365 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7549' AND InvTypeCode='DLX';

-- Rollback: Hotel La Perle | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=194365 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7549' AND InvTypeCode='Suite';

-- Rollback: Port Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=196481 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7138' AND InvTypeCode='SPR';

-- Rollback: Port Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=196481 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7138' AND InvTypeCode='DLX';

-- Rollback: Port Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=196481 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7138' AND InvTypeCode='Suite';

-- Rollback: Saint-Roch | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=197163 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7675' AND InvTypeCode='DLX';

-- Rollback: Saint-Roch | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=197163 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7675' AND InvTypeCode='Suite';

-- Rollback: Home Latin | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=199232 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7671' AND InvTypeCode='SPR';

-- Rollback: Home Latin | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=199232 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7671' AND InvTypeCode='DLX';

-- Rollback: Home Latin | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=199232 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7671' AND InvTypeCode='Suite';

-- Rollback: Home Latin | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=199232 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7672' AND InvTypeCode='SPR';

-- Rollback: Home Latin | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=199232 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7672' AND InvTypeCode='DLX';

-- Rollback: Home Latin | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=199232 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7672' AND InvTypeCode='Suite';

-- Rollback: Hotel Flor Rivoli  | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=199631 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7546' AND InvTypeCode='SPR';

-- Rollback: Hotel Flor Rivoli  | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=199631 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7546' AND InvTypeCode='DLX';

-- Rollback: Hotel Flor Rivoli  | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=199631 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7546' AND InvTypeCode='Suite';

-- Rollback: Arbel Suites Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=205608 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7149' AND InvTypeCode='SPR';

-- Rollback: Arbel Suites Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=205608 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7149' AND InvTypeCode='Suite';

-- Rollback: Arbel Suites Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=205608 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7150' AND InvTypeCode='SPR';

-- Rollback: Arbel Suites Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=205608 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7150' AND InvTypeCode='Suite';

-- Rollback: Hotel Emile / Sevigne Hotel Paris | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=208326 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7543' AND InvTypeCode='DLX';

-- Rollback: Hotel Emile / Sevigne Hotel Paris | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=208326 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7543' AND InvTypeCode='Suite';

-- Rollback: Hotel Emile / Sevigne Hotel Paris | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=208326 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7544' AND InvTypeCode='DLX';

-- Rollback: Hotel Emile / Sevigne Hotel Paris | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=208326 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7544' AND InvTypeCode='Suite';

-- Rollback: Apex Temple Court Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=210263 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7188' AND InvTypeCode='DLX';

-- Rollback: Apex Temple Court Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=210263 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7188' AND InvTypeCode='Suite';

-- Rollback: Apex Temple Court Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=210263 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7189' AND InvTypeCode='DLX';

-- Rollback: Apex Temple Court Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=210263 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7189' AND InvTypeCode='Suite';

-- Rollback: SENTIDO REEF OASIS SENSES | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=212318 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7323' AND InvTypeCode='DLX';

-- Rollback: SENTIDO REEF OASIS SENSES | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=212318 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7323' AND InvTypeCode='Suite';

-- Rollback: SENTIDO REEF OASIS SENSES | AI/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=212318 AND BoardId=5 AND CategoryId=4 AND RatePlanCode='7324' AND InvTypeCode='DLX';

-- Rollback: SENTIDO REEF OASIS SENSES | AI/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=212318 AND BoardId=5 AND CategoryId=12 AND RatePlanCode='7324' AND InvTypeCode='Suite';

-- Rollback: Mandalay Bay Hotel & Casino | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=215712 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7379' AND InvTypeCode='SPR';

-- Rollback: Mandalay Bay Hotel & Casino | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=215712 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7379' AND InvTypeCode='DLX';

-- Rollback: Citadines Holborn-Covent Garden London | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=237161 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7093' AND InvTypeCode='SPR';

-- Rollback: Citadines Holborn-Covent Garden London | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=237161 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7093' AND InvTypeCode='DLX';

-- Rollback: Citadines Holborn-Covent Garden London | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=237161 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7093' AND InvTypeCode='Suite';

-- Rollback: Notebook Miami Beach | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=237547 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12070' AND InvTypeCode='SPR';

-- Rollback: Notebook Miami Beach | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=237547 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12070' AND InvTypeCode='DLX';

-- Rollback: Notebook Miami Beach | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=237547 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='12070' AND InvTypeCode='Suite';

-- Rollback: Dream South Beach | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241025 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12060' AND InvTypeCode='SPR';

-- Rollback: Dream South Beach | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241025 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12060' AND InvTypeCode='DLX';

-- Rollback: JW Marriott Marquis Hotel Dubai | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241168 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='6962' AND InvTypeCode='SPR';

-- Rollback: JW Marriott Marquis Hotel Dubai | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241168 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='6962' AND InvTypeCode='Suite';

-- Rollback: JW Marriott Marquis Hotel Dubai | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241168 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='6963' AND InvTypeCode='SPR';

-- Rollback: JW Marriott Marquis Hotel Dubai | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241168 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='6963' AND InvTypeCode='Suite';

-- Rollback: Conrad Dubai | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241415 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7261' AND InvTypeCode='SPR';

-- Rollback: Conrad Dubai | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241415 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7261' AND InvTypeCode='Suite';

-- Rollback: Conrad Dubai | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241415 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7262' AND InvTypeCode='SPR';

-- Rollback: Conrad Dubai | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241415 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7262' AND InvTypeCode='Suite';

-- Rollback: Dolphin Viliage | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241446 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7629' AND InvTypeCode='SPR';

-- Rollback: Dolphin Viliage | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241446 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7629' AND InvTypeCode='DLX';

-- Rollback: Dolphin Viliage | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241446 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7629' AND InvTypeCode='Suite';

-- Rollback: Dolphin Viliage | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241446 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7630' AND InvTypeCode='SPR';

-- Rollback: Dolphin Viliage | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241446 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7630' AND InvTypeCode='DLX';

-- Rollback: Dolphin Viliage | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=241446 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7630' AND InvTypeCode='Suite';

-- Rollback: The Mercer | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=253174 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7070' AND InvTypeCode='SPR';

-- Rollback: The Mercer | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=253174 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7070' AND InvTypeCode='Suite';

-- Rollback: The Mercer | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=253174 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7071' AND InvTypeCode='SPR';

-- Rollback: The Mercer | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=253174 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7071' AND InvTypeCode='Suite';

-- Rollback: Hilton Cabana Miami Beach | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=254198 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Hilton Cabana Miami Beach | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=254198 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Hilton Cabana Miami Beach | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=254198 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Address Boulevard | RO/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=254941 AND BoardId=1 AND CategoryId=1 AND RatePlanCode='7215' AND InvTypeCode='Stnd';

-- Rollback: Address Boulevard | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=254941 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7215' AND InvTypeCode='SPR';

-- Rollback: Address Boulevard | BB/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=254941 AND BoardId=2 AND CategoryId=1 AND RatePlanCode='7216' AND InvTypeCode='Stnd';

-- Rollback: Address Boulevard | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=254941 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7216' AND InvTypeCode='SPR';

-- Rollback: Sloane Square Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=264084 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7194' AND InvTypeCode='DLX';

-- Rollback: Sloane Square Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=264084 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7194' AND InvTypeCode='Suite';

-- Rollback: Residence Suites | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=264523 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7154' AND InvTypeCode='SPR';

-- Rollback: Grandior Hotel Prague | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=265475 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7383' AND InvTypeCode='SPR';

-- Rollback: Grandior Hotel Prague | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=265475 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7383' AND InvTypeCode='Suite';

-- Rollback: Grandior Hotel Prague | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=265475 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7384' AND InvTypeCode='SPR';

-- Rollback: Grandior Hotel Prague | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=265475 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7384' AND InvTypeCode='Suite';

-- Rollback: Villa Ba Moshava By Brown (Formerly Arcadia Ba'Moshava Jerusalem) | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=266841 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7754' AND InvTypeCode='DLX';

-- Rollback: Villa Ba Moshava By Brown (Formerly Arcadia Ba'Moshava Jerusalem) | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=266841 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7754' AND InvTypeCode='Suite';

-- Rollback: Villa Ba Moshava By Brown (Formerly Arcadia Ba'Moshava Jerusalem) | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=266841 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7755' AND InvTypeCode='DLX';

-- Rollback: Villa Ba Moshava By Brown (Formerly Arcadia Ba'Moshava Jerusalem) | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=266841 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7755' AND InvTypeCode='Suite';

-- Rollback: Hôtel Gaythering | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=277280 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Hôtel Gaythering | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=277280 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Hôtel Gaythering | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=277280 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Market House - An Atlas Boutique Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=285709 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7141' AND InvTypeCode='DLX';

-- Rollback: Market House - An Atlas Boutique Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=285709 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7141' AND InvTypeCode='Suite';

-- Rollback: Market House - An Atlas Boutique Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=285709 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7142' AND InvTypeCode='DLX';

-- Rollback: Market House - An Atlas Boutique Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=285709 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7142' AND InvTypeCode='Suite';

-- Rollback: Hotel Croydon | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=286236 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Hotel Croydon | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=286236 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Hotel Croydon | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=286236 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: The Gates Hotel South Beach - a DoubleTree by Hilton | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=301583 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: The Gates Hotel South Beach - a DoubleTree by Hilton | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=301583 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: The Gates Hotel South Beach - a DoubleTree by Hilton | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=301583 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Hilton Garden Inn Miami South Beach | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=301640 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Hilton Garden Inn Miami South Beach | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=301640 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Hilton Garden Inn Miami South Beach | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=301640 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Gale South Beach | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=301645 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Gale South Beach | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=301645 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Gale South Beach | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=301645 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: SUNRISE Arabian Beach Resort | RO/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=305323 AND BoardId=1 AND CategoryId=1 AND RatePlanCode='7313' AND InvTypeCode='Stnd';

-- Rollback: SUNRISE Arabian Beach Resort | BB/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=305323 AND BoardId=2 AND CategoryId=1 AND RatePlanCode='7314' AND InvTypeCode='Stnd';

-- Rollback: Shani Jerusalem | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=313608 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7639' AND InvTypeCode='SPR';

-- Rollback: Shani Jerusalem | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=313608 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7639' AND InvTypeCode='DLX';

-- Rollback: Shani Jerusalem | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=313608 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7640' AND InvTypeCode='SPR';

-- Rollback: Shani Jerusalem | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=313608 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7640' AND InvTypeCode='DLX';

-- Rollback: Hyatt Centric South Beach Miami (City View) | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=314212 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12066' AND InvTypeCode='SPR';

-- Rollback: Hyatt Centric South Beach Miami (City View) | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=314212 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='12066' AND InvTypeCode='Suite';

-- Rollback: Esprit Saint Germain | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=316281 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7669' AND InvTypeCode='DLX';

-- Rollback: Esprit Saint Germain | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=316281 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7669' AND InvTypeCode='Suite';

-- Rollback: Esprit Saint Germain | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=316281 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7670' AND InvTypeCode='DLX';

-- Rollback: Esprit Saint Germain | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=316281 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7670' AND InvTypeCode='Suite';

-- Rollback: Brown Beach House | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=318831 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7740' AND InvTypeCode='SPR';

-- Rollback: Brown Beach House | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=318831 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7740' AND InvTypeCode='Suite';

-- Rollback: Taj Dubai Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=321314 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7279' AND InvTypeCode='Suite';

-- Rollback: Taj Dubai Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=321314 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7280' AND InvTypeCode='Suite';

-- Rollback: Habtoor Palace, LXR Hotels & Resorts (Ex. THE ST. REGIS) | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=324657 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7213' AND InvTypeCode='SPR';

-- Rollback: Habtoor Palace, LXR Hotels & Resorts (Ex. THE ST. REGIS) | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=324657 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7213' AND InvTypeCode='Suite';

-- Rollback: Habtoor Palace, LXR Hotels & Resorts (Ex. THE ST. REGIS) | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=324657 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7214' AND InvTypeCode='SPR';

-- Rollback: Habtoor Palace, LXR Hotels & Resorts (Ex. THE ST. REGIS) | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=324657 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7214' AND InvTypeCode='Suite';

-- Rollback: Eurostars Langford Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12067' AND InvTypeCode='SPR';

-- Rollback: Eurostars Langford Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13159' AND InvTypeCode='SPR';

-- Rollback: Eurostars Langford Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13159' AND InvTypeCode='DLX';

-- Rollback: Eurostars Langford Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='13159' AND InvTypeCode='Suite';

-- Rollback: The Chess Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=348314 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7594' AND InvTypeCode='DLX';

-- Rollback: The Chess Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=348314 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7594' AND InvTypeCode='Suite';

-- Rollback: The Chess Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=348314 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7595' AND InvTypeCode='DLX';

-- Rollback: The Chess Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=348314 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7595' AND InvTypeCode='Suite';

-- Rollback: Park Plaza Waterloo | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=356213 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7127' AND InvTypeCode='DLX';

-- Rollback: Park Plaza Waterloo | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=356213 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7127' AND InvTypeCode='Suite';

-- Rollback: Park Plaza Waterloo | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=356213 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7128' AND InvTypeCode='DLX';

-- Rollback: Park Plaza Waterloo | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=356213 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7128' AND InvTypeCode='Suite';

-- Rollback: Villa Brown Jerusalem | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=360291 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7765' AND InvTypeCode='SPR';

-- Rollback: Villa Brown Jerusalem | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=360291 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7765' AND InvTypeCode='Suite';

-- Rollback: Villa Brown Jerusalem | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=360291 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7766' AND InvTypeCode='SPR';

-- Rollback: Villa Brown Jerusalem | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=360291 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7766' AND InvTypeCode='Suite';

-- Rollback: BROWN BEACH HOUSE DESIGN HOTEL | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=361242 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7780' AND InvTypeCode='DLX';

-- Rollback: BROWN BEACH HOUSE DESIGN HOTEL | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=361242 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7780' AND InvTypeCode='Suite';

-- Rollback: BROWN BEACH HOUSE DESIGN HOTEL | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=361242 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7781' AND InvTypeCode='DLX';

-- Rollback: BROWN BEACH HOUSE DESIGN HOTEL | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=361242 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7781' AND InvTypeCode='Suite';

-- Rollback: Hilton Dubai Al Habtoor City (Ex. Westin) | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=361657 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7256' AND InvTypeCode='SPR';

-- Rollback: Hilton Dubai Al Habtoor City (Ex. Westin) | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=361657 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7256' AND InvTypeCode='Suite';

-- Rollback: Hilton Dubai Al Habtoor City (Ex. Westin) | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=361657 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7257' AND InvTypeCode='SPR';

-- Rollback: Hilton Dubai Al Habtoor City (Ex. Westin) | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=361657 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7257' AND InvTypeCode='Suite';

-- Rollback: Sheraton Grand Hotel Dubai | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=361821 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7275' AND InvTypeCode='SPR';

-- Rollback: Sheraton Grand Hotel Dubai | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=361821 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7275' AND InvTypeCode='Suite';

-- Rollback: Sheraton Grand Hotel Dubai | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=361821 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7276' AND InvTypeCode='SPR';

-- Rollback: Sheraton Grand Hotel Dubai | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=361821 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7276' AND InvTypeCode='Suite';

-- Rollback: La Ville Hotel & Suites CITY WALK, Dubai, Autograph Collection | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=376247 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7241' AND InvTypeCode='SPR';

-- Rollback: La Ville Hotel & Suites CITY WALK, Dubai, Autograph Collection | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=376247 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7241' AND InvTypeCode='Suite';

-- Rollback: La Ville Hotel & Suites CITY WALK, Dubai, Autograph Collection | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=376247 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7242' AND InvTypeCode='SPR';

-- Rollback: La Ville Hotel & Suites CITY WALK, Dubai, Autograph Collection | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=376247 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7242' AND InvTypeCode='Suite';

-- Rollback: Grand Hotel Leveque | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=382417 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7524' AND InvTypeCode='DLX';

-- Rollback: Grand Hotel Leveque | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=382417 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7524' AND InvTypeCode='Suite';

-- Rollback: Grand Hotel Leveque | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=382417 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7525' AND InvTypeCode='DLX';

-- Rollback: Grand Hotel Leveque | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=382417 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7525' AND InvTypeCode='Suite';

-- Rollback: Dave Gordon - Son Of A Brown | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=382813 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7750' AND InvTypeCode='SPR';

-- Rollback: Dave Gordon - Son Of A Brown | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=382813 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7750' AND InvTypeCode='Suite';

-- Rollback: Dave Gordon - Son Of A Brown | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=382813 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7751' AND InvTypeCode='SPR';

-- Rollback: Dave Gordon - Son Of A Brown | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=382813 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7751' AND InvTypeCode='Suite';

-- Rollback: Iberostar Berkeley Shore Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=383277 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12061' AND InvTypeCode='SPR';

-- Rollback: Iberostar Berkeley Shore Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=383277 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Iberostar Berkeley Shore Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=383277 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Hotel Pierre Nicole | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=388433 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7537' AND InvTypeCode='SPR';

-- Rollback: Hotel Pierre Nicole | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=388433 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7537' AND InvTypeCode='DLX';

-- Rollback: Hotel Pierre Nicole | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=388433 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7537' AND InvTypeCode='Suite';

-- Rollback: Hotel Pierre Nicole | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=388433 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7538' AND InvTypeCode='SPR';

-- Rollback: Hotel Pierre Nicole | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=388433 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7538' AND InvTypeCode='DLX';

-- Rollback: Hotel Pierre Nicole | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=388433 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7538' AND InvTypeCode='Suite';

-- Rollback: Hotel du Loiret / Grand Hotel Paris | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=392590 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7545' AND InvTypeCode='SPR';

-- Rollback: Hotel du Loiret / Grand Hotel Paris | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=392590 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7545' AND InvTypeCode='DLX';

-- Rollback: Hotel du Loiret / Grand Hotel Paris | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=392590 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7545' AND InvTypeCode='Suite';

-- Rollback: MILLESIME HOTEL PARIS | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=392596 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7600' AND InvTypeCode='DLX';

-- Rollback: MILLESIME HOTEL PARIS | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=392596 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7600' AND InvTypeCode='Suite';

-- Rollback: MILLESIME HOTEL PARIS | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=392596 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7601' AND InvTypeCode='DLX';

-- Rollback: MILLESIME HOTEL PARIS | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=392596 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7601' AND InvTypeCode='Suite';

-- Rollback: JEANNE D'ARC MARAIS | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=393267 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7592' AND InvTypeCode='DLX';

-- Rollback: JEANNE D'ARC MARAIS | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=393267 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7592' AND InvTypeCode='Suite';

-- Rollback: JEANNE D'ARC MARAIS | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=393267 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7593' AND InvTypeCode='DLX';

-- Rollback: JEANNE D'ARC MARAIS | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=393267 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7593' AND InvTypeCode='Suite';

-- Rollback:  Daria - Haon Beach Hotel (ex. Yama Hotel; Kfar Kinneret)  | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=404578 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7641' AND InvTypeCode='SPR';

-- Rollback:  Daria - Haon Beach Hotel (ex. Yama Hotel; Kfar Kinneret)  | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=404578 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7641' AND InvTypeCode='DLX';

-- Rollback:  Daria - Haon Beach Hotel (ex. Yama Hotel; Kfar Kinneret)  | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=404578 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7641' AND InvTypeCode='Suite';

-- Rollback:  Daria - Haon Beach Hotel (ex. Yama Hotel; Kfar Kinneret)  | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=404578 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7642' AND InvTypeCode='SPR';

-- Rollback:  Daria - Haon Beach Hotel (ex. Yama Hotel; Kfar Kinneret)  | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=404578 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7642' AND InvTypeCode='DLX';

-- Rollback:  Daria - Haon Beach Hotel (ex. Yama Hotel; Kfar Kinneret)  | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=404578 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7642' AND InvTypeCode='Suite';

-- Rollback: Marlin Waterloo | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=407878 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7131' AND InvTypeCode='SPR';

-- Rollback: Marlin Waterloo | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=407878 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7131' AND InvTypeCode='Suite';

-- Rollback: Marlin Waterloo | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=407878 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7132' AND InvTypeCode='SPR';

-- Rollback: Marlin Waterloo | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=407878 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7132' AND InvTypeCode='Suite';

-- Rollback: Canal Central Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=408350 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7224' AND InvTypeCode='Suite';

-- Rollback: Canal Central Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=408350 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7225' AND InvTypeCode='Suite';

-- Rollback: Charmillion Club Resort | RO/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=412558 AND BoardId=1 AND CategoryId=1 AND RatePlanCode='7317' AND InvTypeCode='Stnd';

-- Rollback: Charmillion Club Resort | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=412558 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7317' AND InvTypeCode='Suite';

-- Rollback: Charmillion Club Resort | BB/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=412558 AND BoardId=2 AND CategoryId=1 AND RatePlanCode='7318' AND InvTypeCode='Stnd';

-- Rollback: Charmillion Club Resort | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=412558 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7318' AND InvTypeCode='Suite';

-- Rollback: Charmillion Club Resort | AI/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=412558 AND BoardId=5 AND CategoryId=1 AND RatePlanCode='7846' AND InvTypeCode='Stnd';

-- Rollback: Charmillion Club Resort | AI/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=412558 AND BoardId=5 AND CategoryId=12 AND RatePlanCode='7846' AND InvTypeCode='Suite';

-- Rollback: Hotel Belleza | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=414146 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Hotel Belleza | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=414146 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Hotel Belleza | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=414146 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Hotel de Roubaix | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=415363 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7522' AND InvTypeCode='SPR';

-- Rollback: Hotel de Roubaix | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=415363 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7522' AND InvTypeCode='DLX';

-- Rollback: Hotel de Roubaix | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=415363 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7522' AND InvTypeCode='Suite';

-- Rollback: Hotel de Roubaix | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=415363 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7523' AND InvTypeCode='SPR';

-- Rollback: Hotel de Roubaix | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=415363 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7523' AND InvTypeCode='DLX';

-- Rollback: Hotel de Roubaix | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=415363 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7523' AND InvTypeCode='Suite';

-- Rollback: DAMAC Maison Royale The Distinction | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=436699 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7249' AND InvTypeCode='SPR';

-- Rollback: Sofitel Dubai Downtown | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=437872 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7254' AND InvTypeCode='SPR';

-- Rollback: Sofitel Dubai Downtown | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=437872 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7254' AND InvTypeCode='Suite';

-- Rollback: Sofitel Dubai Downtown | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=437872 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7255' AND InvTypeCode='SPR';

-- Rollback: Sofitel Dubai Downtown | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=437872 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7255' AND InvTypeCode='Suite';

-- Rollback: Hotel National Des Arts et Metiers | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=446867 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7586' AND InvTypeCode='DLX';

-- Rollback: Hotel National Des Arts et Metiers | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=446867 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7586' AND InvTypeCode='Suite';

-- Rollback: Hotel National Des Arts et Metiers | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=446867 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7587' AND InvTypeCode='DLX';

-- Rollback: Hotel National Des Arts et Metiers | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=446867 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7587' AND InvTypeCode='Suite';

-- Rollback: Poli House By Brown Hotels | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=475912 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7738' AND InvTypeCode='SPR';

-- Rollback: Poli House By Brown Hotels | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=475912 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7738' AND InvTypeCode='Suite';

-- Rollback: Poli House By Brown Hotels | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=475912 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7739' AND InvTypeCode='SPR';

-- Rollback: Poli House By Brown Hotels | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=475912 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7739' AND InvTypeCode='Suite';

-- Rollback: Lighthouse By Brown Hotels | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=700403 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7732' AND InvTypeCode='DLX';

-- Rollback: Lighthouse By Brown Hotels | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=700403 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7732' AND InvTypeCode='Suite';

-- Rollback: Lighthouse By Brown Hotels | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=700403 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7733' AND InvTypeCode='DLX';

-- Rollback: Lighthouse By Brown Hotels | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=700403 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7733' AND InvTypeCode='Suite';

-- Rollback: Generator Miami | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=701659 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Generator Miami | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=701659 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Generator Miami | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=701659 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Geula Suites | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=706661 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7181' AND InvTypeCode='SPR';

-- Rollback: Geula Suites | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=706661 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7181' AND InvTypeCode='DLX';

-- Rollback: Geula Suites | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=706661 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7181' AND InvTypeCode='Suite';

-- Rollback: DoubleTree by Hilton Miami Doral | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=733781 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: DoubleTree by Hilton Miami Doral | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=733781 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: DoubleTree by Hilton Miami Doral | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=733781 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Residence 26 | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=766812 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7182' AND InvTypeCode='SPR';

-- Rollback: Residence 26 | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=766812 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7182' AND InvTypeCode='DLX';

-- Rollback: Address Downtown | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825006 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7231' AND InvTypeCode='SPR';

-- Rollback: Address Downtown | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825006 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7231' AND InvTypeCode='Suite';

-- Rollback: Address Downtown | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825006 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7232' AND InvTypeCode='SPR';

-- Rollback: Address Downtown | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825006 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7232' AND InvTypeCode='Suite';

-- Rollback: Baywatch Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825207 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7625' AND InvTypeCode='SPR';

-- Rollback: Baywatch Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825207 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7625' AND InvTypeCode='DLX';

-- Rollback: Baywatch Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825207 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7625' AND InvTypeCode='Suite';

-- Rollback: Baywatch Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825207 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7626' AND InvTypeCode='SPR';

-- Rollback: Baywatch Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825207 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7626' AND InvTypeCode='DLX';

-- Rollback: Baywatch Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825207 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7626' AND InvTypeCode='Suite';

-- Rollback: MERIT KENSINGTON | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825952 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7113' AND InvTypeCode='SPR';

-- Rollback: MERIT KENSINGTON | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825952 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7113' AND InvTypeCode='DLX';

-- Rollback: MERIT KENSINGTON | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825952 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7113' AND InvTypeCode='Suite';

-- Rollback: MERIT KENSINGTON | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825952 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7114' AND InvTypeCode='SPR';

-- Rollback: MERIT KENSINGTON | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825952 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7114' AND InvTypeCode='DLX';

-- Rollback: MERIT KENSINGTON | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=825952 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7114' AND InvTypeCode='Suite';

-- Rollback: Hotel Du Champ de Mars | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826044 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7608' AND InvTypeCode='DLX';

-- Rollback: Hotel Du Champ de Mars | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826044 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7608' AND InvTypeCode='Suite';

-- Rollback: Waldorf Astoria Dubai International Financial Centre | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826068 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7222' AND InvTypeCode='SPR';

-- Rollback: Waldorf Astoria Dubai International Financial Centre | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826068 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7223' AND InvTypeCode='SPR';

-- Rollback: Radisson Blu Hotel Dubai Waterfront | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826577 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7247' AND InvTypeCode='DLX';

-- Rollback: Radisson Blu Hotel Dubai Waterfront | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826577 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7247' AND InvTypeCode='Suite';

-- Rollback: Radisson Blu Hotel Dubai Waterfront | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826577 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7248' AND InvTypeCode='DLX';

-- Rollback: Radisson Blu Hotel Dubai Waterfront | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826577 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7248' AND InvTypeCode='Suite';

-- Rollback: Grand Millennium Business Bay | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826585 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7211' AND InvTypeCode='DLX';

-- Rollback: Grand Millennium Business Bay | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826585 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7211' AND InvTypeCode='Suite';

-- Rollback: Grand Millennium Business Bay | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826585 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7212' AND InvTypeCode='DLX';

-- Rollback: Grand Millennium Business Bay | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826585 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7212' AND InvTypeCode='Suite';

-- Rollback: Paramount Hotel Dubai | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826607 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7269' AND InvTypeCode='SPR';

-- Rollback: Paramount Hotel Dubai | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826607 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7269' AND InvTypeCode='DLX';

-- Rollback: Paramount Hotel Dubai | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826607 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7270' AND InvTypeCode='SPR';

-- Rollback: Paramount Hotel Dubai | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826607 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7270' AND InvTypeCode='DLX';

-- Rollback: Radisson Blu, Dubai Canal View | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826608 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7235' AND InvTypeCode='DLX';

-- Rollback: Radisson Blu, Dubai Canal View | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826608 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7235' AND InvTypeCode='Suite';

-- Rollback: Radisson Blu, Dubai Canal View | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826608 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7236' AND InvTypeCode='DLX';

-- Rollback: Radisson Blu, Dubai Canal View | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826608 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7236' AND InvTypeCode='Suite';

-- Rollback: Brown Seaside By Brown Hotels | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826694 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7746' AND InvTypeCode='SPR';

-- Rollback: Brown Seaside By Brown Hotels | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826694 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7746' AND InvTypeCode='Suite';

-- Rollback: Brown Seaside By Brown Hotels | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826694 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7747' AND InvTypeCode='SPR';

-- Rollback: Brown Seaside By Brown Hotels | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826694 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7747' AND InvTypeCode='Suite';

-- Rollback: Hotel BoBo by Brown Hotels | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826697 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7734' AND InvTypeCode='SPR';

-- Rollback: Hotel BoBo by Brown Hotels | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826697 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7734' AND InvTypeCode='Suite';

-- Rollback: Hotel BoBo by Brown Hotels | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826697 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7735' AND InvTypeCode='SPR';

-- Rollback: Hotel BoBo by Brown Hotels | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826697 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7735' AND InvTypeCode='Suite';

-- Rollback: Dave Levinsky - Son of a Brown | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826698 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7752' AND InvTypeCode='SPR';

-- Rollback: Dave Levinsky - Son of a Brown | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826698 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7752' AND InvTypeCode='DLX';

-- Rollback: Dave Levinsky - Son of a Brown | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826698 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7752' AND InvTypeCode='Suite';

-- Rollback: Dave Levinsky - Son of a Brown | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826698 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7753' AND InvTypeCode='SPR';

-- Rollback: Dave Levinsky - Son of a Brown | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826698 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7753' AND InvTypeCode='DLX';

-- Rollback: Dave Levinsky - Son of a Brown | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826698 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7753' AND InvTypeCode='Suite';

-- Rollback: Theodor By Brown Hotels | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826703 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7748' AND InvTypeCode='DLX';

-- Rollback: Theodor By Brown Hotels | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826703 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7748' AND InvTypeCode='Suite';

-- Rollback: Theodor By Brown Hotels | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826703 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7749' AND InvTypeCode='DLX';

-- Rollback: Theodor By Brown Hotels | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=826703 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7749' AND InvTypeCode='Suite';

-- Rollback: Hotel Heleni Jerusalem (by Olive)  | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827204 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7617' AND InvTypeCode='SPR';

-- Rollback: Hotel Heleni Jerusalem (by Olive)  | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827204 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7617' AND InvTypeCode='DLX';

-- Rollback: Hotel Heleni Jerusalem (by Olive)  | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827204 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7617' AND InvTypeCode='Suite';

-- Rollback: Hotel Heleni Jerusalem (by Olive)  | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827204 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7618' AND InvTypeCode='SPR';

-- Rollback: Hotel Heleni Jerusalem (by Olive)  | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827204 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7618' AND InvTypeCode='DLX';

-- Rollback: Hotel Heleni Jerusalem (by Olive)  | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827204 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7618' AND InvTypeCode='Suite';

-- Rollback: Address Sky View | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827532 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7226' AND InvTypeCode='SPR';

-- Rollback: Address Sky View | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827532 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7226' AND InvTypeCode='Suite';

-- Rollback: Address Sky View | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827532 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7227' AND InvTypeCode='SPR';

-- Rollback: Address Sky View | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827532 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7227' AND InvTypeCode='Suite';

-- Rollback: BROWN JLM | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827543 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7756' AND InvTypeCode='SPR';

-- Rollback: BROWN JLM | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827543 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7756' AND InvTypeCode='Suite';

-- Rollback: BROWN JLM | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827543 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7757' AND InvTypeCode='SPR';

-- Rollback: BROWN JLM | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827543 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7757' AND InvTypeCode='Suite';

-- Rollback: Jaz Mirabel Resort | AI/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827553 AND BoardId=5 AND CategoryId=1 AND RatePlanCode='7333' AND InvTypeCode='Stnd';

-- Rollback: Jaz Mirabel Resort | AI/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827553 AND BoardId=5 AND CategoryId=12 AND RatePlanCode='7333' AND InvTypeCode='Suite';

-- Rollback: Albatros Aqua Park Sharm El Sheikh | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827554 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7315' AND InvTypeCode='SPR';

-- Rollback: Albatros Aqua Park Sharm El Sheikh | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827554 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7315' AND InvTypeCode='Suite';

-- Rollback: Albatros Aqua Park Sharm El Sheikh | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827554 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7316' AND InvTypeCode='SPR';

-- Rollback: Albatros Aqua Park Sharm El Sheikh | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827554 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7316' AND InvTypeCode='Suite';

-- Rollback: Albatros Aqua Park Sharm El Sheikh | AI/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827554 AND BoardId=5 AND CategoryId=2 AND RatePlanCode='7888' AND InvTypeCode='SPR';

-- Rollback: Albatros Aqua Park Sharm El Sheikh | AI/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827554 AND BoardId=5 AND CategoryId=12 AND RatePlanCode='7888' AND InvTypeCode='Suite';

-- Rollback: Brown Machne Yehuda   | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827688 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7758' AND InvTypeCode='DLX';

-- Rollback: Brown Machne Yehuda   | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827688 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7758' AND InvTypeCode='Suite';

-- Rollback: Brown Machne Yehuda   | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827688 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7759' AND InvTypeCode='DLX';

-- Rollback: Brown Machne Yehuda   | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827688 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7759' AND InvTypeCode='Suite';

-- Rollback: ibis Styles London Ealing | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827737 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7076' AND InvTypeCode='SPR';

-- Rollback: ibis Styles London Ealing | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827737 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7076' AND InvTypeCode='DLX';

-- Rollback: ibis Styles London Ealing | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827737 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7076' AND InvTypeCode='Suite';

-- Rollback: ibis Styles London Ealing | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827737 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7077' AND InvTypeCode='SPR';

-- Rollback: ibis Styles London Ealing | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827737 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7077' AND InvTypeCode='DLX';

-- Rollback: ibis Styles London Ealing | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827737 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7077' AND InvTypeCode='Suite';

-- Rollback: Hotel Indigo Dubai Downtown | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827752 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7267' AND InvTypeCode='Suite';

-- Rollback: Hotel Indigo Dubai Downtown | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=827752 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7268' AND InvTypeCode='Suite';

-- Rollback: Olive Gilboa   | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839231 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7631' AND InvTypeCode='SPR';

-- Rollback: Olive Gilboa   | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839231 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7631' AND InvTypeCode='DLX';

-- Rollback: Olive Gilboa   | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839231 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7631' AND InvTypeCode='Suite';

-- Rollback: Olive Gilboa   | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839231 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7632' AND InvTypeCode='SPR';

-- Rollback: Olive Gilboa   | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839231 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7632' AND InvTypeCode='DLX';

-- Rollback: Olive Gilboa   | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839231 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7632' AND InvTypeCode='Suite';

-- Rollback: Rimonim Aquaduct Hotel  | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839232 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7637' AND InvTypeCode='SPR';

-- Rollback: Rimonim Aquaduct Hotel  | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839232 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7637' AND InvTypeCode='Suite';

-- Rollback: Rimonim Aquaduct Hotel  | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839232 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7638' AND InvTypeCode='SPR';

-- Rollback: Rimonim Aquaduct Hotel  | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839232 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7638' AND InvTypeCode='Suite';

-- Rollback: Olive Tlv 88 Sea Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839233 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7611' AND InvTypeCode='SPR';

-- Rollback: Olive Tlv 88 Sea Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839233 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7611' AND InvTypeCode='DLX';

-- Rollback: Olive Tlv 88 Sea Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839233 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7611' AND InvTypeCode='Suite';

-- Rollback: Olive Tlv 88 Sea Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839233 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7612' AND InvTypeCode='SPR';

-- Rollback: Olive Tlv 88 Sea Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839233 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7612' AND InvTypeCode='DLX';

-- Rollback: Olive Tlv 88 Sea Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839233 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7612' AND InvTypeCode='Suite';

-- Rollback: Olive The White House   | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839234 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7609' AND InvTypeCode='SPR';

-- Rollback: Olive The White House   | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839234 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7609' AND InvTypeCode='DLX';

-- Rollback: Olive The White House   | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839234 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7609' AND InvTypeCode='Suite';

-- Rollback: Olive The White House   | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839234 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7610' AND InvTypeCode='SPR';

-- Rollback: Olive The White House   | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839234 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7610' AND InvTypeCode='DLX';

-- Rollback: Olive The White House   | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839234 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7610' AND InvTypeCode='Suite';

-- Rollback: Olive Beer Garden Hotel  | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839235 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7613' AND InvTypeCode='SPR';

-- Rollback: Olive Beer Garden Hotel  | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839235 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7613' AND InvTypeCode='DLX';

-- Rollback: Olive Beer Garden Hotel  | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839235 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7613' AND InvTypeCode='Suite';

-- Rollback: Olive Beer Garden Hotel  | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839235 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7614' AND InvTypeCode='SPR';

-- Rollback: Olive Beer Garden Hotel  | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839235 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7614' AND InvTypeCode='DLX';

-- Rollback: Olive Beer Garden Hotel  | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839235 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7614' AND InvTypeCode='Suite';

-- Rollback: Rimonim Madison Hotel Nahariya  | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839236 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7635' AND InvTypeCode='DLX';

-- Rollback: Rimonim Madison Hotel Nahariya  | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839236 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7635' AND InvTypeCode='Suite';

-- Rollback: Rimonim Madison Hotel Nahariya  | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839236 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7636' AND InvTypeCode='DLX';

-- Rollback: Rimonim Madison Hotel Nahariya  | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839236 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7636' AND InvTypeCode='Suite';

-- Rollback: Olive Boutique Hotel Nahariya | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839237 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7627' AND InvTypeCode='SPR';

-- Rollback: Olive Boutique Hotel Nahariya | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839237 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7627' AND InvTypeCode='DLX';

-- Rollback: Olive Boutique Hotel Nahariya | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839237 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7627' AND InvTypeCode='Suite';

-- Rollback: Olive Boutique Hotel Nahariya | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839237 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7628' AND InvTypeCode='SPR';

-- Rollback: Olive Boutique Hotel Nahariya | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839237 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7628' AND InvTypeCode='DLX';

-- Rollback: Olive Boutique Hotel Nahariya | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839237 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7628' AND InvTypeCode='Suite';

-- Rollback: Olive Gordon By The Beach  | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839239 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7615' AND InvTypeCode='SPR';

-- Rollback: Olive Gordon By The Beach  | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839239 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7615' AND InvTypeCode='DLX';

-- Rollback: Olive Gordon By The Beach  | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839239 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7615' AND InvTypeCode='Suite';

-- Rollback: Olive Gordon By The Beach  | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839239 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7616' AND InvTypeCode='SPR';

-- Rollback: Olive Gordon By The Beach  | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839239 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7616' AND InvTypeCode='DLX';

-- Rollback: Olive Gordon By The Beach  | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839239 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7616' AND InvTypeCode='Suite';

-- Rollback: Villa Bakfar | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839242 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7633' AND InvTypeCode='SPR';

-- Rollback: Villa Bakfar | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839242 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7633' AND InvTypeCode='DLX';

-- Rollback: Villa Bakfar | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839242 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7633' AND InvTypeCode='Suite';

-- Rollback: Villa Bakfar | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839242 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7634' AND InvTypeCode='SPR';

-- Rollback: Villa Bakfar | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839242 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7634' AND InvTypeCode='DLX';

-- Rollback: Villa Bakfar | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=839242 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7634' AND InvTypeCode='Suite';

-- Rollback: PULLMAN DUBAI DOWNTOWN HOTEL | RO/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842332 AND BoardId=1 AND CategoryId=1 AND RatePlanCode='7263' AND InvTypeCode='Stnd';

-- Rollback: PULLMAN DUBAI DOWNTOWN HOTEL | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842332 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7263' AND InvTypeCode='Suite';

-- Rollback: PULLMAN DUBAI DOWNTOWN HOTEL | BB/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842332 AND BoardId=2 AND CategoryId=1 AND RatePlanCode='7264' AND InvTypeCode='Stnd';

-- Rollback: PULLMAN DUBAI DOWNTOWN HOTEL | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842332 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7264' AND InvTypeCode='Suite';

-- Rollback: Golden House By Brown Hotels | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842529 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7741' AND InvTypeCode='DLX';

-- Rollback: Golden House By Brown Hotels | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842529 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7741' AND InvTypeCode='Suite';

-- Rollback: Golden House By Brown Hotels | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842529 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7742' AND InvTypeCode='DLX';

-- Rollback: Golden House By Brown Hotels | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842529 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7742' AND InvTypeCode='Suite';

-- Rollback: Villa Brown Tel Aviv | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842530 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7745' AND InvTypeCode='SPR';

-- Rollback: Villa Brown Tel Aviv | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842530 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7745' AND InvTypeCode='DLX';

-- Rollback: Villa Brown Tel Aviv | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842530 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7745' AND InvTypeCode='Suite';

-- Rollback: SLS Dubai Hotel & Residences | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842608 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7243' AND InvTypeCode='SPR';

-- Rollback: SLS Dubai Hotel & Residences | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842608 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7243' AND InvTypeCode='DLX';

-- Rollback: SLS Dubai Hotel & Residences | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842608 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7244' AND InvTypeCode='SPR';

-- Rollback: SLS Dubai Hotel & Residences | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=842608 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7244' AND InvTypeCode='DLX';

-- Rollback: Dave Red Athens - Son Of A Brown | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845261 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7774' AND InvTypeCode='SPR';

-- Rollback: Dave Red Athens - Son Of A Brown | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845261 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7774' AND InvTypeCode='DLX';

-- Rollback: Dave Red Athens - Son Of A Brown | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845261 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7775' AND InvTypeCode='SPR';

-- Rollback: Dave Red Athens - Son Of A Brown | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845261 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7775' AND InvTypeCode='DLX';

-- Rollback: Debrah Brown Tel-Aviv | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845354 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7736' AND InvTypeCode='SPR';

-- Rollback: Debrah Brown Tel-Aviv | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845354 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7736' AND InvTypeCode='Suite';

-- Rollback: Debrah Brown Tel-Aviv | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845354 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7737' AND InvTypeCode='SPR';

-- Rollback: Debrah Brown Tel-Aviv | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845354 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7737' AND InvTypeCode='Suite';

-- Rollback: Villa Brown Ermou hotel a member of Brown Hotels | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845364 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7772' AND InvTypeCode='SPR';

-- Rollback: Villa Brown Ermou hotel a member of Brown Hotels | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845364 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7772' AND InvTypeCode='Suite';

-- Rollback: Villa Brown Ermou hotel a member of Brown Hotels | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845364 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7773' AND InvTypeCode='SPR';

-- Rollback: Villa Brown Ermou hotel a member of Brown Hotels | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845364 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7773' AND InvTypeCode='Suite';

-- Rollback: Brown Beach Corinthia a member of Brown Hotels   | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845365 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7778' AND InvTypeCode='SPR';

-- Rollback: Brown Beach Corinthia a member of Brown Hotels   | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845365 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7778' AND InvTypeCode='Suite';

-- Rollback: Brown Beach Corinthia a member of Brown Hotels   | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845365 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7779' AND InvTypeCode='SPR';

-- Rollback: Brown Beach Corinthia a member of Brown Hotels   | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=845365 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7779' AND InvTypeCode='Suite';

-- Rollback: Brown Brut A Member Of Brown Hotels | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846048 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7743' AND InvTypeCode='SPR';

-- Rollback: Brown Brut A Member Of Brown Hotels | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846048 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7743' AND InvTypeCode='Suite';

-- Rollback: Brown Brut A Member Of Brown Hotels | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846048 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7744' AND InvTypeCode='SPR';

-- Rollback: Brown Brut A Member Of Brown Hotels | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846048 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7744' AND InvTypeCode='Suite';

-- Rollback: Ink Hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846050 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7145' AND InvTypeCode='Suite';

-- Rollback: Ink Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846050 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7146' AND InvTypeCode='Suite';

-- Rollback: HYATT CENTRIC JUMEIRAH DUBAI | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846098 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7239' AND InvTypeCode='SPR';

-- Rollback: HYATT CENTRIC JUMEIRAH DUBAI | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846098 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7240' AND InvTypeCode='SPR';

-- Rollback: 25HOURS HOTEL DUBAI ONE CENTRAL | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846102 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7265' AND InvTypeCode='SPR';

-- Rollback: 25HOURS HOTEL DUBAI ONE CENTRAL | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846102 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7265' AND InvTypeCode='DLX';

-- Rollback: 25HOURS HOTEL DUBAI ONE CENTRAL | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846102 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7266' AND InvTypeCode='SPR';

-- Rollback: 25HOURS HOTEL DUBAI ONE CENTRAL | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846102 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7266' AND InvTypeCode='DLX';

-- Rollback: Paramount Hotel Midtown | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846140 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7277' AND InvTypeCode='SPR';

-- Rollback: Paramount Hotel Midtown | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846140 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7277' AND InvTypeCode='DLX';

-- Rollback: Paramount Hotel Midtown | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846140 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7278' AND InvTypeCode='SPR';

-- Rollback: Paramount Hotel Midtown | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846140 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7278' AND InvTypeCode='DLX';

-- Rollback: The Grand at Trafalgar Square | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846278 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7119' AND InvTypeCode='SPR';

-- Rollback: The Grand at Trafalgar Square | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846278 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7119' AND InvTypeCode='DLX';

-- Rollback: The Grand at Trafalgar Square | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846278 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7119' AND InvTypeCode='Suite';

-- Rollback: The Grand at Trafalgar Square | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846278 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7120' AND InvTypeCode='SPR';

-- Rollback: The Grand at Trafalgar Square | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846278 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7120' AND InvTypeCode='DLX';

-- Rollback: The Grand at Trafalgar Square | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846278 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7120' AND InvTypeCode='Suite';

-- Rollback: Kimpton Hotel Palomar South Beach | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846428 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Kimpton Hotel Palomar South Beach | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846428 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Kimpton Hotel Palomar South Beach | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846428 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: The Dubai EDITION | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846488 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7250' AND InvTypeCode='SPR';

-- Rollback: The Dubai EDITION | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846488 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7250' AND InvTypeCode='Suite';

-- Rollback: The Dubai EDITION | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846488 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7251' AND InvTypeCode='SPR';

-- Rollback: The Dubai EDITION | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846488 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7251' AND InvTypeCode='Suite';

-- Rollback: Brown Lighthouse Athens, A Member Of Brown Hotels, Athens | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846944 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7767' AND InvTypeCode='SPR';

-- Rollback: Brown Lighthouse Athens, A Member Of Brown Hotels, Athens | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846944 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7767' AND InvTypeCode='Suite';

-- Rollback: Brown Lighthouse Athens, A Member Of Brown Hotels, Athens | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846944 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7768' AND InvTypeCode='SPR';

-- Rollback: Brown Lighthouse Athens, A Member Of Brown Hotels, Athens | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=846944 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7768' AND InvTypeCode='Suite';

-- Rollback: Brown Kubic, a member of Brown Hotels | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=847409 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7776' AND InvTypeCode='SPR';

-- Rollback: Brown Kubic, a member of Brown Hotels | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=847409 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7776' AND InvTypeCode='DLX';

-- Rollback: Brown Kubic, a member of Brown Hotels | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=847409 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7776' AND InvTypeCode='Suite';

-- Rollback: Brown Kubic, a member of Brown Hotels | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=847409 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7777' AND InvTypeCode='SPR';

-- Rollback: Brown Kubic, a member of Brown Hotels | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=847409 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7777' AND InvTypeCode='DLX';

-- Rollback: Brown Kubic, a member of Brown Hotels | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=847409 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7777' AND InvTypeCode='Suite';

-- Rollback: Glamping Mia | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=847726 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='7622' AND InvTypeCode='SPR';

-- Rollback: Glamping Mia | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=847726 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='7622' AND InvTypeCode='DLX';

-- Rollback: Glamping Mia | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=847726 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='7622' AND InvTypeCode='Suite';

-- Rollback: Glamping Mia | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=847726 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='7623' AND InvTypeCode='SPR';

-- Rollback: Glamping Mia | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=847726 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='7623' AND InvTypeCode='DLX';

-- Rollback: Glamping Mia | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=847726 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='7623' AND InvTypeCode='Suite';

-- Rollback: The Gabriel Miami South Beach, Curio Collection by Hilton | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=848677 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12075' AND InvTypeCode='SPR';

-- Rollback: THE LANDON BAY HARBOR | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=851633 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: THE LANDON BAY HARBOR | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=851633 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: THE LANDON BAY HARBOR | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=851633 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: SERENA Hotel Aventura Miami, Tapestry Collection by Hilton | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=851939 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: SERENA Hotel Aventura Miami, Tapestry Collection by Hilton | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=851939 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: SERENA Hotel Aventura Miami, Tapestry Collection by Hilton | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=851939 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: SLS LUX Brickell | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: SLS LUX Brickell | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: SLS LUX Brickell | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Gale Miami Hotel and Residences | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=852725 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: Gale Miami Hotel and Residences | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=852725 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: Gale Miami Hotel and Residences | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=852725 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Atwell Suites Miami Brickell | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=853382 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12068' AND InvTypeCode='SPR';

-- Rollback: Atwell Suites Miami Brickell | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=853382 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12068' AND InvTypeCode='DLX';

-- Rollback: citizenM Miami South Beach | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=854710 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: citizenM Miami South Beach | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=854710 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: citizenM Miami South Beach | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=854710 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: Hampton Inn Miami Beach - Mid Beach | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=854875 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12074' AND InvTypeCode='SPR';

-- Rollback: Hampton Inn Miami Beach - Mid Beach | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=854875 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12074' AND InvTypeCode='DLX';

-- Rollback: Hampton Inn Miami Beach - Mid Beach | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=854875 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='12074' AND InvTypeCode='Suite';

-- Rollback: citizenM Miami Brickell hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=854881 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12043' AND InvTypeCode='SPR';

-- Rollback: citizenM Miami Brickell hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=854881 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12043' AND InvTypeCode='DLX';

-- Rollback: citizenM Miami Brickell hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=854881 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='12043' AND InvTypeCode='Suite';

-- Rollback: The Albion Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=855711 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: The Albion Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=855711 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: The Albion Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=855711 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: The Grayson Hotel Miami Downtown | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=855865 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12063' AND InvTypeCode='SPR';

COMMIT TRANSACTION;