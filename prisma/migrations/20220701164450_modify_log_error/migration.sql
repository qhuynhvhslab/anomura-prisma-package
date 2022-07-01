/*
  Warnings:

  - You are about to drop the column `message` on the `LogError` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "LogError" DROP COLUMN "message",
ADD COLUMN     "content" JSONB;
