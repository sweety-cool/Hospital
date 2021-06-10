-- CreateTable
CREATE TABLE `Hospital` (
    `ID` INTEGER NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(191) NOT NULL,
    `Phone` INTEGER NOT NULL,
    `Address` VARCHAR(191) NOT NULL,
    `IsolationBeds` INTEGER NOT NULL,
    `NormalBeds` INTEGER NOT NULL,
    `Ventilators` INTEGER NOT NULL,

    PRIMARY KEY (`ID`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Patient` (
    `ID` INTEGER NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(191) NOT NULL,
    `hospitalID` INTEGER NOT NULL,

    PRIMARY KEY (`ID`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Patient` ADD FOREIGN KEY (`hospitalID`) REFERENCES `Hospital`(`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
