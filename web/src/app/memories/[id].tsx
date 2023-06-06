import { EmptyMemories } from "@/components/EmptyMemories";
import { api } from "@/lib/api";
import { cookies } from "next/dist/client/components/headers";
import Image from "next/image";

import dayjs from "dayjs";
import ptBR from "dayjs/locale/pt-br";
import { ArrowRight } from "lucide-react";
import Link from "next/link";
import { NextPage } from "next";

dayjs.locale(ptBR);

interface Memory {
  id: string;
  coverUrl: string;
  excerpt: string;
  createdAt: string;
}

export default async function Memory(): Promise<NextPage> {
  const isAutheticated = cookies().has("token");

  if (!isAutheticated) {
    return <EmptyMemories />;
  }

  const token = cookies().get("token")?.value;

  const response = await api.get(`/memories/${id}`, {
    headers: {
      Authorization: `Bearer ${token}`,
    },
  });

  const memories: Memory[] = response.data;

  if (memories.length === 0) {
    return <EmptyMemories />;
  }

  return (
    <div className="flex flex-col gap-10 p-8">
      {memories.map((memory) => {
        return (
          <div key={memory.id} className="space-y-4">
            <time className="flex items-center gap-2 text-sm text-gray-100 -ml-12 before:h-px before:w-5 before:bg-gray-50">
              {dayjs(memory.createdAt).format("D[ de ]MMM[, ]YYYY")}
            </time>
            <Image
              src={memory.coverUrl}
              width={592}
              height={280}
              alt=""
              className="w-full aspect-video object-cover rounded-lg"
            />
            <p className="text-lg leading-relaxed text-gray-100">
              {memory.excerpt}
            </p>
            <Link
              href={`/memories/${memory.id}`}
              className="flex items-center gap-2 text-sm text-gray-200 hover:text-gray-100"
            >
              Ler mais
              <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        );
      })}
    </div>
  );
}
