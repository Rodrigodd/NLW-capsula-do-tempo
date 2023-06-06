
const styles = {
    color: '#ff000',
}

interface ButtonProps {
    nome: string
}

export function Button(props: ButtonProps) {
    return (
        <p style={styles}>{props.nome}</p>
    )
}