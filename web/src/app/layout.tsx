import "./globals.css";
import { Roboto_Flex, Bai_Jamjuree } from "next/font/google";

import { Copyright } from "@/components/Copyright";
import { Hero } from "@/components/Hero";
import { Profile } from "@/components/Profile";
import { SignIn } from "@/components/SignIn";
import { cookies } from "next/dist/client/components/headers";

const roboto = Roboto_Flex({ subsets: ["latin"], variable: "--font-roboto" });
const baiamjurre = Bai_Jamjuree({
  subsets: ["latin"],
  weight: "700",
  variable: "--font-bai-jamjuree",
});

export const metadata = {
  title: "NLW Spacetime",
  description:
    "Uma cápsula do tempo construída usando React, Next.js, TailwindCSS e TypeScript",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  const isAuthenticated = cookies().has("token");

  return (
    <html lang="en">
      <body
        className={`${roboto.variable} ${baiamjurre.variable} font-sans text-gray-100 bg-gray-900`}
      >
        <main className="grid grid-cols-2 min-h-screen bg-[url(../assets/bg-stars.svg)] bg-cover">
          {/* Left */}
          <div className="relative flex flex-col items-start justify-between overflow-hidden px-28 py-16 border-r border-white/10">
            {/* Blur */}
            <div className="absolute right-0 top-1/2 h-[228px] w-[526px] -translate-y-1/2 translate-x-1/2 rounded-full bg-purple-700 opacity-50 blur-full" />

            {/* Sripes */}
            <div className="absolute right-2 top-0 bottom-0 w-2 bg-stripes" />

            {isAuthenticated ? <Profile /> : <SignIn />}

            <Hero />

            <Copyright />
          </div>

          {/* Right */}
          <div className="flex overflow-y-scroll max-h-screen flex-col bg-[url(../assets/bg-stars.svg)] bg-cover">
            {children}
          </div>
        </main>
      </body>
    </html>
  );
}
