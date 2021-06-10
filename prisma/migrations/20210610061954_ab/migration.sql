/*
  Warnings:

  - Added the required column `bloodBankID` to the `Patient` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `patient` ADD COLUMN `bloodBankID` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `Patient` ADD FOREIGN KEY (`bloodBankID`) REFERENCES `BloodBank`(`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
