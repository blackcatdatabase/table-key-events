<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\KeyEvents\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Žádná logika; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class KeyEventDto {
    public function __construct(
        public readonly ?int $id,
        public readonly ?int $keyId,
        public readonly ?string $basename,
        public readonly string $eventType,
        public readonly ?int $actorId,
        public readonly ?int $jobId,
        public readonly ?string $note,
        public readonly array|null $meta,
        public readonly string $source,
        public readonly \DateTimeImmutable $createdAt
    ) {}

    /** Vhodné pro serializaci/logování (bez binárních/velkých blobů). */
    public function toArray(): array {
        // get_object_vars funguje dobře s public readonly vlastnostmi
        return get_object_vars($this);
    }
}
