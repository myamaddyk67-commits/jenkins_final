"use client";

import { useState, useEffect } from "react";

export default function Page() {
  const [rows, setRows] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    async function getBooks() {
      try {
        const apiHost = process.env.NEXT_PUBLIC_API_HOST; // Ensure this is set in your environment
        const res = await fetch(`${apiHost}/books`, { cache: "no-store" });
        if (!res.ok) throw new Error("Failed to fetch");
        const data = await res.json();
        setRows(data);
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    }

    getBooks();
  }, []);

  if (loading) {
    return (
      <main className="container">
        <div className="empty">Loading...</div>
      </main>
    );
  }

  if (error) {
    return (
      <main className="container">
        <div className="empty">Error: {error}</div>
      </main>
    );
  }

  return (
    <main className="container">
      <header className="header">
        <h1 className="title">Bookworms - Online Books Store</h1>
        <p className="subtitle">Explore a collection of books</p>
      </header>

      {!rows || rows.length === 0 ? (
        <div className="empty">No books found.</div>
      ) : (
        <section className="grid" aria-live="polite">
          {rows.map((book) => (
            <article key={book.id} className="card" tabIndex={0}>
              {book.cover_image && (
                <div className="media">
                  <img
                    src={book.cover_image}
                    alt={book.title}
                    className="img"
                    loading="lazy"
                    decoding="async"
                  />
                </div>
              )}
              <div className="body">
                <h3 className="card-title">{book.title}</h3>
                {book.author && <p className="detail">{book.author}</p>}
                {book.published_year && (
                  <p className="meta">
                    Published: <span className="code">{book.published_year}</span>
                  </p>
                )}
                {book.rating && (
                  <p className="meta">
                    Rating: <span className="code">{book.rating}</span>
                  </p>
                )}
              </div>
            </article>
          ))}
        </section>
      )}
    </main>
  );
}
