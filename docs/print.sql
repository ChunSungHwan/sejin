-- 아파트단지
CREATE TABLE `COMPLEXES` (
  `CNO`               INTEGER      NOT NULL COMMENT '아파트단지번호', -- 아파트단지번호
  `ADDRESS`           VARCHAR(255) NOT NULL COMMENT '주소', -- 주소
  `BLOCK_TOTAL`       INTEGER      NOT NULL COMMENT '총동수', -- 총동수
  `DOOR_TOTAL`        INTEGER      NOT NULL COMMENT '총세대수', -- 총세대수
  `PARK_TOTAL`        INTEGER      NOT NULL COMMENT '총주차대수', -- 총주차대수
  `HIGHEST_TIER`      INTEGER      NOT NULL COMMENT '최고층', -- 최고층
  `LOWEST_TIER`       INTEGER      NOT NULL COMMENT '최저층', -- 최저층
  `HEAT_SYSTEM`       VARCHAR(255) NOT NULL COMMENT '난방방식', -- 난방방식
  `HEAT_FUEL`         VARCHAR(255) NOT NULL COMMENT '난방연료', -- 난방연료
  `FLOOR_AREA_RATION` INTEGER      NOT NULL COMMENT '용적률', -- 용적률
  `COMPANY_NAME`      VARCHAR(255) NOT NULL COMMENT '건설사명', -- 건설사명
  `MOVE_DATE`         DATETIME     NOT NULL COMMENT '입주년일', -- 입주년일
  `COMPLETE_DATE`     DATETIME     NOT NULL COMMENT '준공년일' -- 준공년일
)
COMMENT '아파트단지';




-- 아파트
CREATE TABLE `APARTMENTS` (
  `ANO`             INTEGER      NOT NULL COMMENT '아파트번호', -- 아파트번호
  `CNO`             INTEGER      NOT NULL COMMENT '아파트단지번호', -- 아파트단지번호
  `TITLE`           VARCHAR(255) NULL     COMMENT '제목', -- 제목
  `CONTENT`         TEXT         NULL     COMMENT '내용', -- 내용
  `BUY_TYPE`        VARCHAR(255) NULL     COMMENT '매물구분', -- 매물구분
  `SALE_PRICE`      INTEGER      NULL     COMMENT '매매가격', -- 매매가격
  `RENT_DEPOSIT`    INTEGER      NULL     COMMENT '전세보증금', -- 전세보증금
  `MRENT_DEPOSIT`   INTEGER      NULL     COMMENT '월세보증금', -- 월세보증금
  `MRENT_PRICE`     INTEGER      NULL     COMMENT '월세', -- 월세
  `SUPPLY_AREA`     INTEGER      NULL     COMMENT '공급면적', -- 공급면적
  `EXCLUSIVE_AREA`  INTEGER      NULL     COMMENT '전용면적', -- 전용면적
  `BLOCK`           INTEGER      NULL     COMMENT '동', -- 동
  `TIER`            INTEGER      NULL     COMMENT '층', -- 층
  `DIRECTION`       VARCHAR(100) NULL     COMMENT '방향', -- 방향
  `EXPECT_DATE`     DATETIME     NULL     COMMENT '입주예정일', -- 입주예정일
  `ENTRANCE_STRUCT` VARCHAR(255) NULL     COMMENT '현관구조', -- 현관구조
  `ROOM_NUMBER`     INTEGER      NULL     COMMENT '방갯수', -- 방갯수
  `BATH_NUMBER`     INTEGER      NULL     COMMENT '욕실갯수', -- 욕실갯수
  `LIVING_NUMBER`   INTEGER      NULL     COMMENT '거실갯수', -- 거실갯수
  `CREATE_DATE`     DATETIME     NOT NULL COMMENT '등록날짜', -- 등록날짜
  `MODIFY_DATE`     DATETIME     NOT NULL COMMENT '수정날짜', -- 수정날짜
  `BALCONY`         BOOLEAN      NOT NULL COMMENT '발코니', -- 발코니
  `WALLPAPER`       BOOLEAN      NOT NULL COMMENT '벽지', -- 벽지
  `BATHROOM`        BOOLEAN      NOT NULL COMMENT '화장실', -- 화장실
  `CEILING`         BOOLEAN      NOT NULL COMMENT '천장', -- 천장
  `FLOOR`           BOOLEAN      NOT NULL COMMENT '마루', -- 마루
  `KITCHEN`         BOOLEAN      NOT NULL COMMENT '부엌', -- 부엌
  `ENTRANCE`        BOOLEAN      NOT NULL COMMENT '전실', -- 전실
  `SHOE_RACK`       BOOLEAN      NOT NULL COMMENT '신발장' -- 신발장
)
COMMENT '아파트';


-- 사진
CREATE TABLE `PHOTOS` (
  `PNO`        INTEGER      NOT NULL COMMENT '사진번호', -- 사진번호
  `ANO`        INTEGER      NOT NULL COMMENT '아파트번호', -- 아파트번호
  `CNO`        INTEGER      NOT NULL COMMENT '아파트단지번호', -- 아파트단지번호
  `PHOTO_PATH` VARCHAR(255) NOT NULL COMMENT '경로' -- 경로
)
COMMENT '사진';
