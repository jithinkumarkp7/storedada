import { ButtonProps } from "@/types/components";

export default function Button({ label, onClick }: ButtonProps) {
    return (
        <button onClick={onClick} className="px-4 py-2 bg-blue-500 text-white rounded">
            {label}
        </button>
    )
}
