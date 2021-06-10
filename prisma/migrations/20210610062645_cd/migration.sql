/*
  Warnings:

  - Added the required column `oxygenBankID` to the `Patient` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `patient` ADD COLUMN `oxygenBankID` INTEGER NOT NULL;

-- CreateTable
CREATE TABLE `OxygenBank` (
    `ID` INTEGER NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(191) NOT NULL,
    `Phone` INTEGER NOT NULL,
    `Address` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`ID`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Patient` ADD FOREIGN KEY (`oxygenBankID`) REFERENCES `OxygenBank`(`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
