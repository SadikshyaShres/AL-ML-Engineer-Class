# Prompt Engineering — Complete Notes (with Examples)

## 1. Model Output Configuration (Fine-Tuning Output Behavior)

These are inference-time settings that control randomness and diversity of the model's output — not training fine-tuning.

### Temperature
- Controls randomness/creativity of token selection.
- Low (0–0.3) → deterministic, focused, repeatable. High (0.7–1.0+) → diverse, creative, less predictable.
- Temperature = 0 → always picks the most likely next token (greedy).

**Example:**
> Prompt: *"Write a tagline for a coffee shop."*
> - Temperature 0.1 → "Great coffee, every time." (safe, predictable)
> - Temperature 0.9 → "Where mornings fall in love with mugs." (creative, varied)

### Top-K
- Restricts sampling to the **K most probable next tokens**, discards the rest.
- Small K → safer, predictable. Larger K → more variety.

**Example:**
> If Top-K = 3, and the model's top candidates for the next word after "The sky is" are: `blue (40%)`, `clear (25%)`, `grey (20%)`, `falling (10%)`, `orange (5%)` — only *blue, clear, grey* are considered; "falling" and "orange" are excluded even though they're valid words.

### Top-P (Nucleus Sampling)
- Selects the smallest set of tokens whose cumulative probability ≥ P.
- Dynamic: fewer tokens considered when model is confident, more when uncertain.

**Example:**
> Top-P = 0.9 on the same distribution above → keeps adding tokens (blue 40%, clear 25%, grey 20%) until the running total hits 90% (40+25+20 = 85%, so it may also include "falling" to cross 90%). The candidate pool size changes automatically based on confidence.

### Sampling Technique
- Overall decoding strategy: **greedy** (always top token), **random sampling**, **Top-K/Top-P sampling**, or **beam search** (tracks multiple candidate sequences, picks the best overall).

**Example:**
> Beam search with beam width = 3 for translating "Bonjour" might simultaneously track "Hello", "Good morning", and "Hi" as candidate sequences before picking the one with the highest overall sentence probability.

---

## 2. Prompting Techniques

### a) Zero-Shot Prompting
- Tells the model what you want with **no examples**. Fast, but may not work every time on complex/format-sensitive tasks.

**Example:**
> Prompt: *"Classify this review as Positive, Negative, or Neutral: 'The food was cold and the service was slow.'"*
> Output: `Negative`

### b) One-Shot & Few-Shot Prompting
- **One-shot**: one example of the desired pattern before the real task.
- **Few-shot**: multiple examples to establish format, tone, or reasoning style.

**Example (Few-Shot):**
> ```
> Review: "Amazing pizza, will come back!" → Positive
> Review: "Rude staff and overpriced." → Negative
> Review: "It was okay, nothing special." → Neutral
> Review: "Best burger I've had in years!" → ?
> ```
> Output: `Positive`

### c) System, Contextual, and Role Prompting
- **System prompting**: overall context/purpose for the whole conversation.
- **Contextual prompting**: situational info — what background you're working from and what the model should be doing *right now*.
- **Role prompting**: assigns the model a specific character/identity so its tone and expertise match that role.

**Examples:**
> - System: *"You are a customer support assistant for a software company. Always be concise and polite."*
> - Contextual: *"The user is reading this on a support ticket page after their payment failed twice. Focus your answer on billing troubleshooting."*
> - Role: *"You are a senior financial analyst. Explain this quarterly report as you would to a company's board of directors."*

### d) Chain of Thought (CoT)
- Prompts the model to reason **step by step** instead of jumping to the final answer.

**Example:**
> Prompt: *"A store had 23 apples. They sold 8 and then received a new shipment of 15. How many apples do they have now? Let's think step by step."*
> Output:
> ```
> Start: 23 apples
> Sold 8: 23 - 8 = 15
> Received 15: 15 + 15 = 30
> Answer: 30 apples
> ```

### e) Self-Consistency
- Generate multiple reasoning paths for the same prompt (often with higher temperature), then take the **majority answer**.

**Example:**
> Ask the same math question 5 times with CoT enabled. If 4 out of 5 runs conclude "30 apples" and 1 run concludes "28 apples" (due to an arithmetic slip), the majority answer, **30**, is selected as final.

### f) Tree of Thoughts (ToT)
- Explores **multiple branches of reasoning** like a search tree, evaluating and backtracking as needed.

**Example:**
> Solving a Sudoku puzzle: the model considers several possible numbers for a cell, "branches" out each possibility, checks which branches lead to contradictions, and backtracks/discards the bad ones — rather than committing to one guess linearly.

### g) ReAct (Reason & Act)
- Alternates between **reasoning** and **taking actions** (e.g., tool calls, search), grounding the LLM in real-world/real-time information.

**Example:**
> ```
> Thought: I need the current stock price of Apple to answer this.
> Action: search("AAPL stock price today")
> Observation: AAPL is trading at $228.50
> Thought: Now I can answer the user's question.
> Answer: Apple (AAPL) is currently trading at $228.50.
> ```

### h) Instruction Prompting
- Clear, explicit, **step-by-step instructions** rather than a vague goal.

**Example:**
> Prompt: *"1. Read the customer email below. 2. Identify the main complaint. 3. Write a 2-sentence apology. 4. Offer a 10% discount code. 5. Keep the tone warm and professional."*

### i) Automatic Prompt Engineering (APE)
- The model itself **generates and tests prompt variations**, and the best-performing one is selected.

**Example:**
> Ask the model: *"Generate 5 different phrasings of a prompt that asks an AI to summarize a news article in 2 sentences. Then evaluate which phrasing produces the clearest summaries."* The model proposes variants like "Summarize in 2 sentences," "Give me a 2-sentence recap," etc., and the best one is kept for production use.

### j) Agentic Prompting
- Enables **LLM-to-LLM or LLM-to-tool workflows** where the model plans, delegates, and executes multi-step tasks.

**Example:**
> A "research agent" prompt: *"Plan and execute the steps needed to compile a competitor pricing report: (1) search for competitor websites, (2) extract pricing pages, (3) summarize findings into a table."* The model autonomously chains searches, tool calls, and summarization steps to complete the task.

### k) Code Prompting
- Prompting the model to **write code** given requirements, language, and constraints.

**Example:**
> Prompt: *"Write a Python function that takes a list of numbers and returns the median, without using any external libraries."*

### l) Code Explanation Prompting
- Prompting the model to **explain existing code**.

**Example:**
> Prompt: *"Explain what this SQL query does, line by line: `SELECT customer_id, SUM(amount) FROM orders GROUP BY customer_id HAVING SUM(amount) > 1000;`"*
> Output: *"This groups orders by customer, sums the total amount each customer spent, and returns only customers who spent more than 1000."*

### m) Multimodal Prompting
- Combines **multiple input types** (text, images, audio, video, code) in one prompt.

**Example:**
> Prompt: *[uploads a photo of a broken bicycle chain] "Based on this image, what part is broken and what tool do I need to fix it?"*

---

## 3. Prompt Tuning vs. Adaptive Tuning

- **Prompt tuning**: iteratively refining a prompt's wording/structure/examples to improve output — the core "write → test → improve" loop.
- **Adaptive tuning**: dynamically adjusting prompts/behavior based on context or feedback over time, rather than a single static prompt.

**Example:**
> - Prompt tuning: You start with *"Summarize this."* Output is too vague, so you refine it to *"Summarize this article in exactly 3 bullet points, focusing on financial impact."*
> - Adaptive tuning: A customer-support bot notices users keep asking follow-up clarifying questions after its answers, so its system prompt is automatically adjusted over time to include more detail upfront.

---

## 4. KV Cache (Key-Value Cache)

- Stores **Key (K)** and **Value (V)** attention vectors from previous tokens so they aren't recomputed at every new generation step — speeds up inference.

**Example:**
> In a long chat, when the model generates token #500, it doesn't recompute attention for tokens #1–499 from scratch — it reuses their cached K/V vectors, only computing new attention for the newest token. This is why the first response in a long conversation can feel slower to *start* than follow-up responses.

---

## 5. LLM "Cosmetic" Questions

- Surface-level/stylistic aspects of output (tone, formatting, presentation) as opposed to deep reasoning or factual substance.

**Example:**
> Two answers might both be factually correct, but one is a wall of text while the other uses clear headers and bullet points — the difference is "cosmetic" quality, not correctness.

---

## Quick Reference Summary

| Category | Techniques |
|---|---|
| **Output Config** | Temperature, Top-K, Top-P, Sampling technique |
| **Basic Prompting** | Zero-shot, One-shot, Few-shot |
| **Framing Prompting** | System, Contextual, Role prompting |
| **Reasoning Prompting** | Chain of Thought, Self-Consistency, Tree of Thoughts |
| **Tool/Action Prompting** | ReAct, Agentic prompting |
| **Structured Prompting** | Instruction prompting, Automatic Prompt Engineering (APE) |
| **Domain-Specific** | Code prompting, Code explanation, Multimodal prompting |
| **Optimization** | Prompt tuning, Adaptive tuning |
| **Systems Concept** | KV cache (memory/speed optimization) |
