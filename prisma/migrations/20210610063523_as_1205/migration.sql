/*
  Warnings:

  - Added the required column `ambulanceServiceId` to the `Patient` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `patient` ADD COLUMN `ambulanceServiceId` INTEGER NOT NULL;

-- CreateTable
CREATE TABLE `AmbulanceService` (
    `Id` INTEGER NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(191) NOT NULL,
    `Phone` INTEGER NOT NULL,
    `Address` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`Id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Patient` ADD FOREIGN KEY (`ambulanceServiceId`) REFERENCES `AmbulanceService`(`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
