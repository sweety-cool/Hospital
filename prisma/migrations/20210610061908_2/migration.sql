/*
  Warnings:

  - You are about to drop the column `bloodBankID` on the `patient` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `patient` DROP FOREIGN KEY `patient_ibfk_2`;

-- AlterTable
ALTER TABLE `patient` DROP COLUMN `bloodBankID`;
