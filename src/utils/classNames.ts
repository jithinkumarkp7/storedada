
export function classNames(...classes: (string | false | null | undefined)[]) {
    return classes.filter(Boolean).join(' ')
}
//Usage: <button className={classNames('btn-primary', isActive && 'bg-green-500')}>
